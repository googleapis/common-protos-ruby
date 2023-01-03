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

desc "Update and recompile all gems."

flag :gems, "--gems=NAMES" do |f|
  f.accept Array
  f.desc "Update only the given gems (comma-delimited)."
end
flag :update_googleapis do
  desc "Update the googleapis subremote first before compiling"
end

include :exec, e: true
include :terminal, styled: true

def run
  Dir.chdir context_directory
  exec ["git", "submodule", "update", "--remote", "googleapis"] if update_googleapis
  determine_dirs.each do |dir|
    Dir.chdir dir do
      exec_separate_tool ["compile"] + verbosity_flags
    end
  end
end

def determine_dirs
  return gems if gems
  Dir.glob("*/*.gemspec").map { |file| File.dirname file }
end
