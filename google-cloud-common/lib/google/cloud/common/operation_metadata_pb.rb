# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/common/operation_metadata.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/cloud/common/operation_metadata.proto\x12\x13google.cloud.common\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xf9\x01\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rstatus_detail\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x1d\n\x10\x63\x61ncel_requested\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x42V\n\x17\x63om.google.cloud.commonP\x01Z9google.golang.org/genproto/googleapis/cloud/common;commonb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Cloud
    module Common
      OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.common.OperationMetadata").msgclass
    end
  end
end

#### Source proto file: google/cloud/common/operation_metadata.proto ####
#
# // Copyright 2024 Google LLC
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
# package google.cloud.common;
#
# import "google/api/field_behavior.proto";
# import "google/protobuf/timestamp.proto";
#
# option go_package = "google.golang.org/genproto/googleapis/cloud/common;common";
# option java_multiple_files = true;
# option java_package = "com.google.cloud.common";
#
# // Represents the metadata of the long-running operation.
# message OperationMetadata {
#   // Output only. The time the operation was created.
#   google.protobuf.Timestamp create_time = 1
#       [(google.api.field_behavior) = OUTPUT_ONLY];
#
#   // Output only. The time the operation finished running.
#   google.protobuf.Timestamp end_time = 2
#       [(google.api.field_behavior) = OUTPUT_ONLY];
#
#   // Output only. Server-defined resource path for the target of the operation.
#   string target = 3 [(google.api.field_behavior) = OUTPUT_ONLY];
#
#   // Output only. Name of the verb executed by the operation.
#   string verb = 4 [(google.api.field_behavior) = OUTPUT_ONLY];
#
#   // Output only. Human-readable status of the operation, if any.
#   string status_detail = 5 [(google.api.field_behavior) = OUTPUT_ONLY];
#
#   // Output only. Identifies whether the user has requested cancellation
#   // of the operation. Operations that have successfully been cancelled
#   // have [Operation.error][] value with a [google.rpc.Status.code][] of 1,
#   // corresponding to `Code.CANCELLED`.
#   bool cancel_requested = 6 [(google.api.field_behavior) = OUTPUT_ONLY];
#
#   // Output only. API version used to start the operation.
#   string api_version = 7 [(google.api.field_behavior) = OUTPUT_ONLY];
# }
