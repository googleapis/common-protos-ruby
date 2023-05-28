# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/rpc/context/attribute_context.proto

require 'google/protobuf'

require 'google/protobuf/any_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n*google/rpc/context/attribute_context.proto\x12\x12google.rpc.context\x1a\x19google/protobuf/any.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x83\x10\n\x10\x41ttributeContext\x12\x39\n\x06origin\x18\x07 \x01(\x0b\x32).google.rpc.context.AttributeContext.Peer\x12\x39\n\x06source\x18\x01 \x01(\x0b\x32).google.rpc.context.AttributeContext.Peer\x12>\n\x0b\x64\x65stination\x18\x02 \x01(\x0b\x32).google.rpc.context.AttributeContext.Peer\x12=\n\x07request\x18\x03 \x01(\x0b\x32,.google.rpc.context.AttributeContext.Request\x12?\n\x08response\x18\x04 \x01(\x0b\x32-.google.rpc.context.AttributeContext.Response\x12?\n\x08resource\x18\x05 \x01(\x0b\x32-.google.rpc.context.AttributeContext.Resource\x12\x35\n\x03\x61pi\x18\x06 \x01(\x0b\x32(.google.rpc.context.AttributeContext.Api\x12(\n\nextensions\x18\x08 \x03(\x0b\x32\x14.google.protobuf.Any\x1a\xbe\x01\n\x04Peer\x12\n\n\x02ip\x18\x01 \x01(\t\x12\x0c\n\x04port\x18\x02 \x01(\x03\x12\x45\n\x06labels\x18\x06 \x03(\x0b\x32\x35.google.rpc.context.AttributeContext.Peer.LabelsEntry\x12\x11\n\tprincipal\x18\x07 \x01(\t\x12\x13\n\x0bregion_code\x18\x08 \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1aL\n\x03\x41pi\x12\x0f\n\x07service\x18\x01 \x01(\t\x12\x11\n\toperation\x18\x02 \x01(\t\x12\x10\n\x08protocol\x18\x03 \x01(\t\x12\x0f\n\x07version\x18\x04 \x01(\t\x1a\x7f\n\x04\x41uth\x12\x11\n\tprincipal\x18\x01 \x01(\t\x12\x11\n\taudiences\x18\x02 \x03(\t\x12\x11\n\tpresenter\x18\x03 \x01(\t\x12\'\n\x06\x63laims\x18\x04 \x01(\x0b\x32\x17.google.protobuf.Struct\x12\x15\n\raccess_levels\x18\x05 \x03(\t\x1a\xef\x02\n\x07Request\x12\n\n\x02id\x18\x01 \x01(\t\x12\x0e\n\x06method\x18\x02 \x01(\t\x12J\n\x07headers\x18\x03 \x03(\x0b\x32\x39.google.rpc.context.AttributeContext.Request.HeadersEntry\x12\x0c\n\x04path\x18\x04 \x01(\t\x12\x0c\n\x04host\x18\x05 \x01(\t\x12\x0e\n\x06scheme\x18\x06 \x01(\t\x12\r\n\x05query\x18\x07 \x01(\t\x12(\n\x04time\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0c\n\x04size\x18\n \x01(\x03\x12\x10\n\x08protocol\x18\x0b \x01(\t\x12\x0e\n\x06reason\x18\x0c \x01(\t\x12\x37\n\x04\x61uth\x18\r \x01(\x0b\x32).google.rpc.context.AttributeContext.Auth\x1a.\n\x0cHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x81\x02\n\x08Response\x12\x0c\n\x04\x63ode\x18\x01 \x01(\x03\x12\x0c\n\x04size\x18\x02 \x01(\x03\x12K\n\x07headers\x18\x03 \x03(\x0b\x32:.google.rpc.context.AttributeContext.Response.HeadersEntry\x12(\n\x04time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x32\n\x0f\x62\x61\x63kend_latency\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\x1a.\n\x0cHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x90\x04\n\x08Resource\x12\x0f\n\x07service\x18\x01 \x01(\t\x12\x0c\n\x04name\x18\x02 \x01(\t\x12\x0c\n\x04type\x18\x03 \x01(\t\x12I\n\x06labels\x18\x04 \x03(\x0b\x32\x39.google.rpc.context.AttributeContext.Resource.LabelsEntry\x12\x0b\n\x03uid\x18\x05 \x01(\t\x12S\n\x0b\x61nnotations\x18\x06 \x03(\x0b\x32>.google.rpc.context.AttributeContext.Resource.AnnotationsEntry\x12\x14\n\x0c\x64isplay_name\x18\x07 \x01(\t\x12/\n\x0b\x63reate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x64\x65lete_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0c\n\x04\x65tag\x18\x0b \x01(\t\x12\x10\n\x08location\x18\x0c \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\x8b\x01\n\x16\x63om.google.rpc.contextB\x15\x41ttributeContextProtoP\x01ZUgoogle.golang.org/genproto/googleapis/rpc/context/attribute_context;attribute_context\xf8\x01\x01\x62\x06proto3"

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
    ["google.protobuf.Any", "google/protobuf/any.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
  module Rpc
    module Context
      AttributeContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.context.AttributeContext").msgclass
      AttributeContext::Peer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.context.AttributeContext.Peer").msgclass
      AttributeContext::Api = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.context.AttributeContext.Api").msgclass
      AttributeContext::Auth = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.context.AttributeContext.Auth").msgclass
      AttributeContext::Request = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.context.AttributeContext.Request").msgclass
      AttributeContext::Response = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.context.AttributeContext.Response").msgclass
      AttributeContext::Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.context.AttributeContext.Resource").msgclass
    end
  end
end
