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

load "#{context_directory}/../shared/toys-common.rb"

proto_globs = [
  "google/api/*.proto",
  "google/logging/type/*.proto",
  "google/longrunning/*.proto",
  "google/rpc/*.proto",
  "google/rpc/context/*.proto",
  "google/type/*.proto",
]

expand "common-proto-tools", proto_globs: proto_globs,
                             additions_dir: "additions",
                             include_proto_comments: true
