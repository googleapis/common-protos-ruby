# frozen_string_literal: true

# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

desc "Runs CI for all gems."
task :ci do
  gem_dirs.each do |gem|
    Dir.chdir gem do
      Bundler.with_clean_env do
        puts "Running CI for #{gem}"
        sh "bundle install && bundle exec rake ci"
      end
    end
  end
end

desc "Clean all gems."
task :clean do
  gem_dirs.each do |gem|
    Dir.chdir gem do
      Bundler.with_clean_env do
        puts "Cleaning #{gem}"
        sh "bundle install && bundle exec rake clean"
      end
    end
  end
end

def gem_dirs
  `git ls-files -- */*.gemspec`.split("\n").map { |gem| gem.split("/").first }.sort
end

task default: :ci
