# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/launch_stage.proto

require 'google/protobuf'


descriptor_data = "\n\x1dgoogle/api/launch_stage.proto\x12\ngoogle.api*\x8c\x01\n\x0bLaunchStage\x12\x1c\n\x18LAUNCH_STAGE_UNSPECIFIED\x10\x00\x12\x11\n\rUNIMPLEMENTED\x10\x06\x12\r\n\tPRELAUNCH\x10\x07\x12\x10\n\x0c\x45\x41RLY_ACCESS\x10\x01\x12\t\n\x05\x41LPHA\x10\x02\x12\x08\n\x04\x42\x45TA\x10\x03\x12\x06\n\x02GA\x10\x04\x12\x0e\n\nDEPRECATED\x10\x05\x42Z\n\x0e\x63om.google.apiB\x10LaunchStageProtoP\x01Z-google.golang.org/genproto/googleapis/api;api\xa2\x02\x04GAPIb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Api
    LaunchStage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.LaunchStage").enummodule
  end
end

#### Source proto file: google/api/launch_stage.proto ####
#
# // Copyright 2023 Google LLC
# //
# // Licensed under the Apache License, Version 2.0 (the "License");
# // you may not use this file except in compliance with the License.
# // You may obtain a copy of the License at
# //
# //     http://www.apache.org/licenses/LICENSE-2.0
# //
# // Unless required by applicable law or agreed to in writing, software
# // distributed under the License is distributed on an "AS IS" BASIS,
# // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# // See the License for the specific language governing permissions and
# // limitations under the License.
#
# syntax = "proto3";
#
# package google.api;
#
# option go_package = "google.golang.org/genproto/googleapis/api;api";
# option java_multiple_files = true;
# option java_outer_classname = "LaunchStageProto";
# option java_package = "com.google.api";
# option objc_class_prefix = "GAPI";
#
# // The launch stage as defined by [Google Cloud Platform
# // Launch Stages](https://cloud.google.com/terms/launch-stages).
# enum LaunchStage {
#   // Do not use this default value.
#   LAUNCH_STAGE_UNSPECIFIED = 0;
#
#   // The feature is not yet implemented. Users can not use it.
#   UNIMPLEMENTED = 6;
#
#   // Prelaunch features are hidden from users and are only visible internally.
#   PRELAUNCH = 7;
#
#   // Early Access features are limited to a closed group of testers. To use
#   // these features, you must sign up in advance and sign a Trusted Tester
#   // agreement (which includes confidentiality provisions). These features may
#   // be unstable, changed in backward-incompatible ways, and are not
#   // guaranteed to be released.
#   EARLY_ACCESS = 1;
#
#   // Alpha is a limited availability test for releases before they are cleared
#   // for widespread use. By Alpha, all significant design issues are resolved
#   // and we are in the process of verifying functionality. Alpha customers
#   // need to apply for access, agree to applicable terms, and have their
#   // projects allowlisted. Alpha releases don't have to be feature complete,
#   // no SLAs are provided, and there are no technical support obligations, but
#   // they will be far enough along that customers can actually use them in
#   // test environments or for limited-use tests -- just like they would in
#   // normal production cases.
#   ALPHA = 2;
#
#   // Beta is the point at which we are ready to open a release for any
#   // customer to use. There are no SLA or technical support obligations in a
#   // Beta release. Products will be complete from a feature perspective, but
#   // may have some open outstanding issues. Beta releases are suitable for
#   // limited production use cases.
#   BETA = 3;
#
#   // GA features are open to all developers and are considered stable and
#   // fully qualified for production use.
#   GA = 4;
#
#   // Deprecated features are scheduled to be shut down and removed. For more
#   // information, see the "Deprecation Policy" section of our [Terms of
#   // Service](https://cloud.google.com/terms/)
#   // and the [Google Cloud Platform Subject to the Deprecation
#   // Policy](https://cloud.google.com/terms/deprecation) documentation.
#   DEPRECATED = 5;
# }
