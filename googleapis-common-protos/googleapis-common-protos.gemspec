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

lib = File.expand_path "lib", __dir__
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib
require "googleapis/common/protos/version"

Gem::Specification.new do |spec|
  spec.name = "googleapis-common-protos"
  spec.version = Google::CommonProtos::VERSION

  spec.authors = ["Google LLC"]
  spec.email = ["googleapis-packages@google.com"]
  spec.licenses = ["Apache-2.0"]
  spec.description = "Common gRPC and protocol buffer classes used in Google APIs"
  spec.summary = "Common gRPC and protocol buffer classes used in Google APIs"
  spec.homepage = "https://github.com/googleapis/common-protos-ruby"

  spec.files = Dir.glob("lib/**/*.rb") + Dir.glob("*.md")
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.1"

  spec.add_dependency "googleapis-common-protos-types", "~> 1.21"
  spec.add_dependency "google-protobuf", "~> 4.26"
  spec.add_dependency "grpc", "~> 1.41"
end
