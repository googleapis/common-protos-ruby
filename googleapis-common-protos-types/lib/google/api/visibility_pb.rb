# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/visibility.proto

require 'google/protobuf'

require 'google/protobuf/descriptor_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/api/visibility.proto", :syntax => :proto3) do
    add_message "google.api.Visibility" do
      repeated :rules, :message, 1, "google.api.VisibilityRule"
    end
    add_message "google.api.VisibilityRule" do
      optional :selector, :string, 1
      optional :restriction, :string, 2
    end
  end
end

module Google
  module Api
    Visibility = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Visibility").msgclass
    VisibilityRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.VisibilityRule").msgclass
  end
end
