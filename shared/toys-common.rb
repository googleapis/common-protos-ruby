# frozen_string_literal: true

# Copyright 2023 Google LLC
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

template "common-proto-tools" do
  def initialize proto_globs:,
                 compile_tool_name: nil,
                 test_tool_name: nil,
                 additions_dir: nil,
                 include_ruby_plugin: true,
                 include_grpc_plugin: false,
                 include_proto_comments: false
    @proto_globs = proto_globs || []
    @compile_tool_name = compile_tool_name || "compile"
    @test_tool_name = test_tool_name || "test"
    @additions_dir = additions_dir
    @include_proto_comments = include_proto_comments
    @include_ruby_plugin = include_ruby_plugin
    @include_grpc_plugin = include_grpc_plugin
  end

  attr_reader :proto_globs
  attr_reader :compile_tool_name
  attr_reader :test_tool_name
  attr_reader :additions_dir
  attr_reader :include_proto_comments
  attr_reader :include_ruby_plugin
  attr_reader :include_grpc_plugin

  to_expand do |template|
    tool template.compile_tool_name do
      desc "Compile proto classes"

      flag :clean, "--[no-]clean", default: true

      static :proto_globs, template.proto_globs.map { |glob| "../googleapis/#{glob}" }
      static :additions_dir, template.additions_dir
      static :include_proto_comments, template.include_proto_comments
      static :include_ruby_plugin, template.include_ruby_plugin
      static :include_grpc_plugin, template.include_grpc_plugin

      include :fileutils
      include :exec, e: true
      include :gems

      def run
        cd context_directory
        gem "grpc-tools", "~> 1.55"
        Dir.glob("lib/**/*_pb.rb") { |path| rm path } if clean
        cmd = ["grpc_tools_ruby_protoc"]
        cmd += ["--ruby_out=lib"] if include_ruby_plugin
        cmd += ["--grpc_out=lib"] if include_grpc_plugin
        cmd += ["-I", "../googleapis"]
        cmd += proto_globs.flat_map { |glob| Dir.glob glob }
        exec cmd
        process_additions if additions_dir
        process_proto_comments if include_proto_comments
      end

      def process_additions
        Dir.glob "**/*.*", base: additions_dir do |path|
          add_content = File.read "#{additions_dir}/#{path}"
          add_content.sub! %r{\A\n*(#[^\n]*\n+)*}, "\n"
          File.open "lib/#{path}", "a" do |file|
            file.write add_content
          end
        end
      end

      def process_proto_comments
        Dir.glob "**/*_pb.rb", base: "lib" do |ruby_path|
          proto_path = ruby_path.sub "_pb.rb", ".proto"
          proto_full_path = "../googleapis/#{proto_path}"
          ruby_full_path = "lib/#{ruby_path}"
          next unless File.file? proto_full_path
          proto_content = File.read proto_full_path
          proto_content.gsub!(/^(.)/, "# \\1")
          proto_content.gsub!(/^$/, "#")
          proto_content = "#{proto_content}\n" unless proto_content.end_with? "\n"
          ruby_content = File.read ruby_full_path
          ruby_content = "#{ruby_content}\n" unless ruby_content.end_with? "\n"
          ruby_content = "#{ruby_content}\n#### Source proto file: #{proto_path} ####\n#\n#{proto_content}"
          File.write ruby_full_path, ruby_content
        end
      end
    end

    tool template.test_tool_name do
      desc "Test generated proto classes"

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
  end
end

