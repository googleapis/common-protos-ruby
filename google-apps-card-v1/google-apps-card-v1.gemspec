# frozen_string_literal: true

# Copyright 2024 Google LLC
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
require "google/apps/card/v1/version"

Gem::Specification.new do |spec|
  spec.name = "google-apps-card-v1"
  spec.version = Google::Apps::Card::V1::VERSION

  spec.authors = ["Google LLC"]
  spec.email = ["googleapis-packages@google.com"]
  spec.licenses = ["Apache-2.0"]
  spec.description = "Common protocol buffer types used by client libraries"
  spec.summary = "Common protocol buffer types used by client libraries"
  spec.homepage = "https://github.com/googleapis/common-protos-ruby"

  spec.files = Dir.glob("lib/**/*.rb") + Dir.glob("*.md")
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.7"

  spec.add_dependency "googleapis-common-protos-types", "~> 1.7"
  spec.add_dependency "google-protobuf", "~> 3.18"
end
