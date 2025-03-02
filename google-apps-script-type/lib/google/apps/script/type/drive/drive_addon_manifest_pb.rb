# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/script/type/drive/drive_addon_manifest.proto

require 'google/protobuf'

require 'google/apps/script/type/extension_point_pb'


descriptor_data = "\n8google/apps/script/type/drive/drive_addon_manifest.proto\x12\x1dgoogle.apps.script.type.drive\x1a-google/apps/script/type/extension_point.proto\"\xb6\x01\n\x12\x44riveAddOnManifest\x12I\n\x10homepage_trigger\x18\x01 \x01(\x0b\x32/.google.apps.script.type.HomepageExtensionPoint\x12U\n\x19on_items_selected_trigger\x18\x02 \x01(\x0b\x32\x32.google.apps.script.type.drive.DriveExtensionPoint\"+\n\x13\x44riveExtensionPoint\x12\x14\n\x0crun_function\x18\x01 \x01(\tB\xe0\x01\n!com.google.apps.script.type.driveB\x17\x44riveAddOnManifestProtoP\x01Z<google.golang.org/genproto/googleapis/apps/script/type/drive\xaa\x02\x1dGoogle.Apps.Script.Type.Drive\xca\x02\x1dGoogle\\Apps\\Script\\Type\\Drive\xea\x02!Google::Apps::Script::Type::Driveb\x06proto3"

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
        module Drive
          DriveAddOnManifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.drive.DriveAddOnManifest").msgclass
          DriveExtensionPoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.drive.DriveExtensionPoint").msgclass
        end
      end
    end
  end
end

#### Source proto file: google/apps/script/type/drive/drive_addon_manifest.proto ####
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
# package google.apps.script.type.drive;
#
# import "google/apps/script/type/extension_point.proto";
#
# option csharp_namespace = "Google.Apps.Script.Type.Drive";
# option go_package = "google.golang.org/genproto/googleapis/apps/script/type/drive";
# option java_multiple_files = true;
# option java_outer_classname = "DriveAddOnManifestProto";
# option java_package = "com.google.apps.script.type.drive";
# option php_namespace = "Google\\Apps\\Script\\Type\\Drive";
# option ruby_package = "Google::Apps::Script::Type::Drive";
#
# // Manifest section specific to Drive add-ons.
#
# // Drive add-on manifest.
# message DriveAddOnManifest {
#   // If present, this overrides the configuration from
#   // `addOns.common.homepageTrigger`.
#   google.apps.script.type.HomepageExtensionPoint homepage_trigger = 1;
#
#   // Corresponds to behvior that should execute when items are selected
#   // in relevant Drive view (e.g. the My Drive Doclist).
#   DriveExtensionPoint on_items_selected_trigger = 2;
# }
#
# // A generic extension point with common features, e.g. something that simply
# // needs a corresponding run function to work.
# message DriveExtensionPoint {
#   // Required. The endpoint to execute when this extension point is
#   // activated.
#   string run_function = 1;
# }
