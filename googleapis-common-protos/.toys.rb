# frozen_string_literal: true

# Copyright 2021 Google LLC
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

PROTO_GLOBS = [
  "../googleapis/google/longrunning/operations.proto",
]

tool "compile" do
  flag :clean, "--[no-]clean", default: true

  include :fileutils
  include :exec, e: true
  include :gems

  def run
    cd context_directory
    gem "grpc-tools", "~> 1.50"
    Dir.glob("lib/**/*_pb.rb") { |path| rm path } if clean
    cmd = [
      "grpc_tools_ruby_protoc",
      "--grpc_out=lib",
      "-I", "../googleapis"
    ] + PROTO_GLOBS.flat_map { |glob| Dir.glob glob }
    exec cmd
  end
end

tool "test" do
  include :fileutils
  include :exec, e: true
  include :bundler

  def run
    cd context_directory
    exec_ruby [], in: :controller do |controller|
      controller.in.puts "puts 'Loading proto files'"
      controller.in.puts "$LOAD_PATH.unshift File.expand_path 'lib'"
      cd "lib" do
        Dir.glob("google/**/*_pb.rb") do |path|
          controller.in.puts "puts #{path.inspect}"
          controller.in.puts "require #{path.inspect}"
        end
      end
    end
  end
end

expand :clean, paths: :gitignore

expand :gem_build

expand :gem_build, name: "release", push_gem: true
