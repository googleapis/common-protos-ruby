# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/script/type/script_manifest.proto

require 'google/protobuf'

require 'google/apps/script/type/addon_widget_set_pb'
require 'google/apps/script/type/extension_point_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n-google/apps/script/type/script_manifest.proto\x12\x17google.apps.script.type\x1a.google/apps/script/type/addon_widget_set.proto\x1a-google/apps/script/type/extension_point.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xb6\x03\n\x13\x43ommonAddOnManifest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x10\n\x08logo_url\x18\x02 \x01(\t\x12\x44\n\x11layout_properties\x18\x03 \x01(\x0b\x32).google.apps.script.type.LayoutProperties\x12\x42\n\x11\x61\x64\x64_on_widget_set\x18\x04 \x01(\x0b\x32\'.google.apps.script.type.AddOnWidgetSet\x12\x1b\n\x13use_locale_from_app\x18\x05 \x01(\x08\x12I\n\x10homepage_trigger\x18\x06 \x01(\x0b\x32/.google.apps.script.type.HomepageExtensionPoint\x12Q\n\x11universal_actions\x18\x07 \x03(\x0b\x32\x36.google.apps.script.type.UniversalActionExtensionPoint\x12:\n\x16open_link_url_prefixes\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.ListValue\"B\n\x10LayoutProperties\x12\x15\n\rprimary_color\x18\x01 \x01(\t\x12\x17\n\x0fsecondary_color\x18\x02 \x01(\t\"]\n\x0bHttpOptions\x12N\n\x14\x61uthorization_header\x18\x01 \x01(\x0e\x32\x30.google.apps.script.type.HttpAuthorizationHeader*v\n\x17HttpAuthorizationHeader\x12)\n%HTTP_AUTHORIZATION_HEADER_UNSPECIFIED\x10\x00\x12\x13\n\x0fSYSTEM_ID_TOKEN\x10\x01\x12\x11\n\rUSER_ID_TOKEN\x10\x02\x12\x08\n\x04NONE\x10\x03\x42\xa8\x01\n\x1b\x63om.google.apps.script.typeP\x01Z6google.golang.org/genproto/googleapis/apps/script/type\xaa\x02\x17Google.Apps.Script.Type\xca\x02\x17Google\\Apps\\Script\\Type\xea\x02\x1aGoogle::Apps::Script::Typeb\x06proto3"

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
    ["google.apps.script.type.AddOnWidgetSet", "google/apps/script/type/addon_widget_set.proto"],
    ["google.apps.script.type.HomepageExtensionPoint", "google/apps/script/type/extension_point.proto"],
    ["google.protobuf.ListValue", "google/protobuf/struct.proto"],
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
        CommonAddOnManifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.CommonAddOnManifest").msgclass
        LayoutProperties = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.LayoutProperties").msgclass
        HttpOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.HttpOptions").msgclass
        HttpAuthorizationHeader = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.HttpAuthorizationHeader").enummodule
      end
    end
  end
end
