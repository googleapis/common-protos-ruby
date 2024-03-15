# Copyright 2024 Google LLC
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

desc "A tool that generates a new common protos gem"

required_arg :proto_namespace

flag :gem_name, "--gem-name NAME" do
  desc "The name of the gem. Defaults to a name inferred from the proto namespace."
end
flag :ruby_module, "--ruby-module NAME" do
  desc "The fully qualified Ruby module. Defaults to a namespace inferred from the gem name."
end
flag :branch_name, "--branch NAME" do
  desc "The name of the branch to use if opening a pull request. Defaults to gen/GEM-NAME."
end
flag :git_remote, "--remote NAME" do
  desc "The name of the git remote to use as the pull request head. If omitted, does not open a pull request."
end
flag :enable_fork, "--fork" do
  desc "Use a fork to open the pull request"
end

include :exec, e: true
include :fileutils
include :terminal
include :git_cache
include "yoshi-pr-generator"

def run
  setup
  commit_message = "feat: Initial generation of #{gem_name}"
  yoshi_pr_generator.capture enabled: !git_remote.nil?,
                             remote: git_remote,
                             branch_name: branch_name,
                             commit_message: commit_message do
    mkdir_p gem_name
    cd gem_name do
      write_base_files
      exec_separate_tool ["compile"] + verbosity_flags
    end
    create_release_please_configs
  end
end

def setup
  require "erb"
  require "json"

  cd context_directory
  set :gem_name, default_gem_name unless gem_name
  error "#{gem_name} already exists" if File.file? "#{gem_name}/Gemfile"
  set :ruby_module, default_ruby_module unless ruby_module
  set :branch_name, "gen/#{gem_name}" unless branch_name
  yoshi_utils.git_ensure_identity
  if enable_fork
    set :git_remote, "pull-request-fork" unless git_remote
    yoshi_utils.gh_ensure_fork remote: git_remote
  end
end

def write_base_files
  templates = {
    "gitignore.erb" => ".gitignore",
    "repo-metadata.erb" => ".repo-metadata.json",
    "toys.erb" => ".toys.rb",
    "changelog.erb" => "CHANGELOG.md",
    "gemfile.erb" => "Gemfile",
    "gemspec.erb" => "#{gem_name}.gemspec",
    "readme.erb" => "README.md",
    "version.erb" => "lib/#{ruby_directory}/version.rb"
  }
  templates.each do |template_name, target_name|
    template = File.read find_data template_name
    mkdir_p File.dirname target_name
    File.write target_name, ERB.new(template).result(template_binding)
  end
end

def template_binding
  binding
end

def create_release_please_configs
  manifest = JSON.parse File.read ".release-please-manifest.json"
  manifest[gem_name] = "0.0.1"
  manifest = add_fillers(manifest).sort.to_h
  File.write ".release-please-manifest.json", "#{JSON.pretty_generate manifest}\n"

  config = JSON.parse File.read "release-please-config.json"
  config["packages"][gem_name] = {
    "component" => gem_name,
    "version_file" => "lib/#{ruby_directory}/version.rb",
  }
  config["packages"] = config["packages"].sort.to_h
  File.write "release-please-config.json", "#{JSON.pretty_generate config}\n"
end

def add_fillers manifest
  non_filler_keys = manifest.keys.filter { |k| !k.end_with? "+FILLER" }
  non_filler_keys.each do |key|
    manifest["#{key}+FILLER"] = "0.0.0"
  end
  manifest
end

def copyright_year
  Time.now.year
end

def default_gem_name
  proto_namespace.tr("/", "-")
end

def default_ruby_module
  gem_name
    .split("-")
    .map { |seg| seg.split("_").map(&:capitalize).join }
    .join("::")
end

def ruby_directory
  gem_name.tr "-", "/"
end

def ruby_module_indent
  "  " * ruby_module.split("::").size
end

def ruby_module_begin
  ruby_module
    .split("::")
    .each_with_index
    .map{ |seg, index| "  " * index + "module #{seg}" }
    .join("\n")
end

def ruby_module_end
  max = ruby_module.split("::").size - 1
  max.downto(0).map { |index| "  " * index + "end" }.join("\n")
end

def error *messages
  messages.each do |message|
    puts message, :red, :bold
  end
  exit 1
end
