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

Gem::Specification.new do |spec|
  spec.name          = "googleapis-common-protos"
  spec.version       = "1.3.9"
  spec.authors       = ["Google Inc"]
  spec.email         = ["googleapis-packages@google.com"]
  spec.licenses      = ["Apache-2.0"]

  spec.summary       = "Common gRPC and protocol buffer classes used in Google APIs"
  spec.homepage      = "https://github.com/googleapis/googleapis"

  # Specify which files should be added to the gem when it is released. The `git
  # ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir File.expand_path(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match %r{^(test|spec|features)/}
    end
  end
  spec.files += Dir.glob "lib/**/*_pb.rb"
  spec.require_paths = ["lib"]

  spec.add_dependency "googleapis-common-protos-types", "~> 1.0"
  spec.add_dependency "google-protobuf", "~> 3.0"
  spec.add_dependency "grpc", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "grpc-tools", "~> 1.18"
  spec.add_development_dependency "rake", "~> 10.0"
end
