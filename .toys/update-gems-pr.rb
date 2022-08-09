# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

desc "Recompile gems and open pull requests."

flag :gems, "--gems=NAMES" do |f|
  f.accept Array
  f.desc "Update only the given gems (comma-delimited)."
end
flag :git_remote, "--remote=NAME" do
  desc "The name of the git remote to use as the pull request head. If omitted, does not open a pull request."
end
flag :enable_fork, "--fork" do
  desc "The github user for whom to create/use a fork"
end

include :exec, e: true
include :terminal, styled: true
include "yoshi-pr-generator"

def run
  require "json"
  Dir.chdir context_directory
  @timestamp = Time.now.utc.strftime("%Y%m%d-%H%M%S")
  prepare_changes
  results = make_changes
  output results
end

def prepare_changes
  yoshi_utils.git_ensure_identity
  if enable_fork
    set :git_remote, "pull-request-fork" unless git_remote
    yoshi_utils.gh_ensure_fork remote: git_remote
  end
  exec ["git", "submodule", "update", "--init"]
end

def make_changes
  determine_dirs.map do |dir|
    Dir.chdir dir do
      [dir, make_one_change(dir)]
    end
  end
end

def make_one_change gem_name
  branch_name = "gen/#{gem_name}-#{@timestamp}"
  commit_message = "feat: Automated update of #{gem_name}"
  return :exists if open_pr_exists? commit_message
  yoshi_pr_generator.capture enabled: !git_remote.nil?,
                             remote: git_remote,
                             branch_name: branch_name,
                             commit_message: commit_message do
    exec_separate_tool ["compile"]
  end
end

def open_pr_exists? title
  content = capture ["gh", "pr", "list", "--search", "\"#{title}\" in:title", "--state=open", "--json=number"]
  !JSON.parse(content).empty?
end

def determine_dirs
  return gems if gems
  Dir.glob("*/*.gemspec").map { |file| File.dirname file }
end

def output results
  results.each do |gem_name, result|
    case result
    when Integer
      puts "Opened pull request #{result} for #{gem_name}", :green, :bold
    when :unchanged
      puts "No changes for #{gem_name}", :magenta
    when :exists
      puts "Pull request already exists for #{gem_name}", :yellow
    else
      puts "Updated #{gem_name} but did not open a pull request", :cyan
    end
  end
end
