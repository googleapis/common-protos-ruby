# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/quota.proto

require 'google/protobuf'


descriptor_data = "\n\x16google/api/quota.proto\x12\ngoogle.api\"]\n\x05Quota\x12&\n\x06limits\x18\x03 \x03(\x0b\x32\x16.google.api.QuotaLimit\x12,\n\x0cmetric_rules\x18\x04 \x03(\x0b\x32\x16.google.api.MetricRule\"\x91\x01\n\nMetricRule\x12\x10\n\x08selector\x18\x01 \x01(\t\x12=\n\x0cmetric_costs\x18\x02 \x03(\x0b\x32\'.google.api.MetricRule.MetricCostsEntry\x1a\x32\n\x10MetricCostsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x03:\x02\x38\x01\"\x95\x02\n\nQuotaLimit\x12\x0c\n\x04name\x18\x06 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x15\n\rdefault_limit\x18\x03 \x01(\x03\x12\x11\n\tmax_limit\x18\x04 \x01(\x03\x12\x11\n\tfree_tier\x18\x07 \x01(\x03\x12\x10\n\x08\x64uration\x18\x05 \x01(\t\x12\x0e\n\x06metric\x18\x08 \x01(\t\x12\x0c\n\x04unit\x18\t \x01(\t\x12\x32\n\x06values\x18\n \x03(\x0b\x32\".google.api.QuotaLimit.ValuesEntry\x12\x14\n\x0c\x64isplay_name\x18\x0c \x01(\t\x1a-\n\x0bValuesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x03:\x02\x38\x01\x42l\n\x0e\x63om.google.apiB\nQuotaProtoP\x01ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig\xa2\x02\x04GAPIb\x06proto3"

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
    Quota = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Quota").msgclass
    MetricRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.MetricRule").msgclass
    QuotaLimit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.QuotaLimit").msgclass
  end
end
