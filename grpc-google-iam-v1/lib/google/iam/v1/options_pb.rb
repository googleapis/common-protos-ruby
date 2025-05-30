# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/iam/v1/options.proto

require 'google/protobuf'


descriptor_data = "\n\x1bgoogle/iam/v1/options.proto\x12\rgoogle.iam.v1\"4\n\x10GetPolicyOptions\x12 \n\x18requested_policy_version\x18\x01 \x01(\x05\x42}\n\x11\x63om.google.iam.v1B\x0cOptionsProtoP\x01Z)cloud.google.com/go/iam/apiv1/iampb;iampb\xf8\x01\x01\xaa\x02\x13Google.Cloud.Iam.V1\xca\x02\x13Google\\Cloud\\Iam\\V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
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
  module Iam
    module V1
      GetPolicyOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.GetPolicyOptions").msgclass
    end
  end
end

#### Source proto file: google/iam/v1/options.proto ####
#
# // Copyright 2025 Google LLC
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
# package google.iam.v1;
#
# option cc_enable_arenas = true;
# option csharp_namespace = "Google.Cloud.Iam.V1";
# option go_package = "cloud.google.com/go/iam/apiv1/iampb;iampb";
# option java_multiple_files = true;
# option java_outer_classname = "OptionsProto";
# option java_package = "com.google.iam.v1";
# option php_namespace = "Google\\Cloud\\Iam\\V1";
#
# // Encapsulates settings provided to GetIamPolicy.
# message GetPolicyOptions {
#   // Optional. The maximum policy version that will be used to format the
#   // policy.
#   //
#   // Valid values are 0, 1, and 3. Requests specifying an invalid value will be
#   // rejected.
#   //
#   // Requests for policies with any conditional role bindings must specify
#   // version 3. Policies with no conditional role bindings may specify any valid
#   // value or leave the field unset.
#   //
#   // The policy in the response might use the policy version that you specified,
#   // or it might use a lower policy version. For example, if you specify version
#   // 3, but the policy has no conditional role bindings, the response uses
#   // version 1.
#   //
#   // To learn which resources support conditions in their IAM policies, see the
#   // [IAM
#   // documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
#   int32 requested_policy_version = 1;
# }
