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

desc "Update the googleapis subremote in a PR and merge it automatically."

flag :git_remote, "--remote=NAME" do
  desc "The name of the git remote to use as the pull request head. If omitted, does not open a pull request."
end
flag :enable_fork, "--fork" do
  desc "The github user for whom to create/use a fork"
end
flag :approval_token, "--approval-token" do
  default ENV["APPROVAL_GITHUB_TOKEN"]
  desc "GitHub token for adding labels and approving pull requests"
end

include :exec, e: true
include :terminal, styled: true
include "yoshi-pr-generator"

def run
  Dir.chdir context_directory
  @timestamp = Time.now.utc.strftime("%Y%m%d-%H%M%S")
  prepare_changes
  result = make_changes
  output result
end

def prepare_changes
  yoshi_utils.git_ensure_identity
  if enable_fork
    set :git_remote, "pull-request-fork" unless git_remote
    yoshi_utils.gh_ensure_fork remote: git_remote
  end
end

def make_changes
  branch_name = "gen/googleapis-#{@timestamp}"
  commit_message = "chore: Automated update of the googleapis subremote at #{@timestamp}"
  approval_message = "Rubber-stamped client auto-generation!"
  yoshi_pr_generator.capture enabled: !git_remote.nil?,
                             remote: git_remote,
                             branch_name: branch_name,
                             commit_message: commit_message,
                             labels: ["automerge"],
                             auto_approve: approval_message,
                             approval_token: approval_token do
    exec ["git", "submodule", "update", "--remote", "googleapis"]
  end
end

def output result
  case result
  when Integer
    puts "Opened pull request #{result} for googleapis subremote", :green, :bold
  when :unchanged
    puts "No changes for googleapis subremote", :magenta
  else
    puts "Updated googleapis subremote but did not open a pull request", :cyan
  end
end
