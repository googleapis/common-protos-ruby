# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/script/type/addon_widget_set.proto

require 'google/protobuf'


descriptor_data = "\n.google/apps/script/type/addon_widget_set.proto\x12\x17google.apps.script.type\"\xa4\x02\n\x0e\x41\x64\x64OnWidgetSet\x12H\n\x0cused_widgets\x18\x01 \x03(\x0e\x32\x32.google.apps.script.type.AddOnWidgetSet.WidgetType\"\xc7\x01\n\nWidgetType\x12\x1b\n\x17WIDGET_TYPE_UNSPECIFIED\x10\x00\x12\x0f\n\x0b\x44\x41TE_PICKER\x10\x01\x12\x12\n\x0eSTYLED_BUTTONS\x10\x02\x12\x14\n\x10PERSISTENT_FORMS\x10\x03\x12\x10\n\x0c\x46IXED_FOOTER\x10\x04\x12!\n\x1dUPDATE_SUBJECT_AND_RECIPIENTS\x10\x05\x12\x0f\n\x0bGRID_WIDGET\x10\x06\x12\x1b\n\x17\x41\x44\x44ON_COMPOSE_UI_ACTION\x10\x07\x42\xbd\x01\n\x1b\x63om.google.apps.script.typeB\x13\x41\x64\x64OnWidgetSetProtoP\x01Z6google.golang.org/genproto/googleapis/apps/script/type\xaa\x02\x17Google.Apps.Script.Type\xca\x02\x17Google\\Apps\\Script\\Type\xea\x02\x1aGoogle::Apps::Script::Typeb\x06proto3"

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
  module Apps
    module Script
      module Type
        AddOnWidgetSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.AddOnWidgetSet").msgclass
        AddOnWidgetSet::WidgetType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.AddOnWidgetSet.WidgetType").enummodule
      end
    end
  end
end

#### Source proto file: google/apps/script/type/addon_widget_set.proto ####
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
# package google.apps.script.type;
#
# option csharp_namespace = "Google.Apps.Script.Type";
# option go_package = "google.golang.org/genproto/googleapis/apps/script/type";
# option java_multiple_files = true;
# option java_outer_classname = "AddOnWidgetSetProto";
# option java_package = "com.google.apps.script.type";
# option php_namespace = "Google\\Apps\\Script\\Type";
# option ruby_package = "Google::Apps::Script::Type";
#
# // The widget subset used by an add-on.
# message AddOnWidgetSet {
#   // The Widget type. DEFAULT is the basic widget set.
#   enum WidgetType {
#     // The default widget set.
#     WIDGET_TYPE_UNSPECIFIED = 0;
#
#     // The date picker.
#     DATE_PICKER = 1;
#
#     // Styled buttons include filled buttons and disabled buttons.
#     STYLED_BUTTONS = 2;
#
#     // Persistent forms allow persisting form values during actions.
#     PERSISTENT_FORMS = 3;
#
#     // Fixed footer in card.
#     FIXED_FOOTER = 4;
#
#     // Update the subject and recipients of a draft.
#     UPDATE_SUBJECT_AND_RECIPIENTS = 5;
#
#     // The grid widget.
#     GRID_WIDGET = 6;
#
#     // A Gmail add-on action that applies to the addon compose UI.
#     ADDON_COMPOSE_UI_ACTION = 7;
#   }
#
#   // The list of widgets used in an add-on.
#   repeated WidgetType used_widgets = 1;
# }
