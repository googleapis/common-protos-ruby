# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/monitored_resource.proto

require 'google/protobuf'

require 'google/api/label_pb'
require 'google/api/launch_stage_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n#google/api/monitored_resource.proto\x12\ngoogle.api\x1a\x16google/api/label.proto\x1a\x1dgoogle/api/launch_stage.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xc0\x01\n\x1bMonitoredResourceDescriptor\x12\x0c\n\x04name\x18\x05 \x01(\t\x12\x0c\n\x04type\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12+\n\x06labels\x18\x04 \x03(\x0b\x32\x1b.google.api.LabelDescriptor\x12-\n\x0claunch_stage\x18\x07 \x01(\x0e\x32\x17.google.api.LaunchStage\"\x8b\x01\n\x11MonitoredResource\x12\x0c\n\x04type\x18\x01 \x01(\t\x12\x39\n\x06labels\x18\x02 \x03(\x0b\x32).google.api.MonitoredResource.LabelsEntry\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xca\x01\n\x19MonitoredResourceMetadata\x12.\n\rsystem_labels\x18\x01 \x01(\x0b\x32\x17.google.protobuf.Struct\x12J\n\x0buser_labels\x18\x02 \x03(\x0b\x32\x35.google.api.MonitoredResourceMetadata.UserLabelsEntry\x1a\x31\n\x0fUserLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42y\n\x0e\x63om.google.apiB\x16MonitoredResourceProtoP\x01ZCgoogle.golang.org/genproto/googleapis/api/monitoredres;monitoredres\xf8\x01\x01\xa2\x02\x04GAPIb\x06proto3"

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
    ["google.api.LabelDescriptor", "google/api/label.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
    MonitoredResourceDescriptor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.MonitoredResourceDescriptor").msgclass
    MonitoredResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.MonitoredResource").msgclass
    MonitoredResourceMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.MonitoredResourceMetadata").msgclass
  end
end
