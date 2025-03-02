# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/script/type/slides/slides_addon_manifest.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/apps/script/type/extension_point_pb'


descriptor_data = "\n:google/apps/script/type/slides/slides_addon_manifest.proto\x12\x1egoogle.apps.script.type.slides\x1a\x1fgoogle/api/field_behavior.proto\x1a-google/apps/script/type/extension_point.proto\"\xbd\x01\n\x13SlidesAddOnManifest\x12I\n\x10homepage_trigger\x18\x01 \x01(\x0b\x32/.google.apps.script.type.HomepageExtensionPoint\x12[\n\x1don_file_scope_granted_trigger\x18\x02 \x01(\x0b\x32\x34.google.apps.script.type.slides.SlidesExtensionPoint\"1\n\x14SlidesExtensionPoint\x12\x19\n\x0crun_function\x18\x01 \x01(\tB\x03\xe0\x41\x02\x42\xe6\x01\n\"com.google.apps.script.type.slidesB\x18SlidesAddOnManifestProtoP\x01Z=google.golang.org/genproto/googleapis/apps/script/type/slides\xaa\x02\x1eGoogle.Apps.Script.Type.Slides\xca\x02\x1eGoogle\\Apps\\Script\\Type\\Slides\xea\x02\"Google::Apps::Script::Type::Slidesb\x06proto3"

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
    ["google.apps.script.type.HomepageExtensionPoint", "google/apps/script/type/extension_point.proto"],
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
  module Apps
    module Script
      module Type
        module Slides
          SlidesAddOnManifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.slides.SlidesAddOnManifest").msgclass
          SlidesExtensionPoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.slides.SlidesExtensionPoint").msgclass
        end
      end
    end
  end
end

#### Source proto file: google/apps/script/type/slides/slides_addon_manifest.proto ####
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
# package google.apps.script.type.slides;
#
# import "google/api/field_behavior.proto";
# import "google/apps/script/type/extension_point.proto";
#
# option csharp_namespace = "Google.Apps.Script.Type.Slides";
# option go_package = "google.golang.org/genproto/googleapis/apps/script/type/slides";
# option java_multiple_files = true;
# option java_outer_classname = "SlidesAddOnManifestProto";
# option java_package = "com.google.apps.script.type.slides";
# option php_namespace = "Google\\Apps\\Script\\Type\\Slides";
# option ruby_package = "Google::Apps::Script::Type::Slides";
#
# // Manifest section specific to Slides add-ons.
#
# // Slides add-on manifest.
# message SlidesAddOnManifest {
#   // If present, this overrides the configuration from
#   // `addOns.common.homepageTrigger`.
#   google.apps.script.type.HomepageExtensionPoint homepage_trigger = 1;
#
#   // Endpoint to execute when file scope authorization is granted
#   // for this document/user pair.
#   SlidesExtensionPoint on_file_scope_granted_trigger = 2;
# }
#
# // Common format for declaring a Slides add-on's triggers.
# message SlidesExtensionPoint {
#   // Required. The endpoint to execute when this extension point is activated.
#   string run_function = 1 [(google.api.field_behavior) = REQUIRED];
# }
