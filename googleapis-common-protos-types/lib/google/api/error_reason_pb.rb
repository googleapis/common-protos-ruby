# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/error_reason.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/api/error_reason.proto", :syntax => :proto3) do
    add_enum "google.api.ErrorReason" do
      value :ERROR_REASON_UNSPECIFIED, 0
      value :SERVICE_DISABLED, 1
      value :BILLING_DISABLED, 2
      value :API_KEY_INVALID, 3
      value :API_KEY_SERVICE_BLOCKED, 4
      value :API_KEY_HTTP_REFERRER_BLOCKED, 7
      value :API_KEY_IP_ADDRESS_BLOCKED, 8
      value :API_KEY_ANDROID_APP_BLOCKED, 9
      value :API_KEY_IOS_APP_BLOCKED, 13
      value :RATE_LIMIT_EXCEEDED, 5
      value :RESOURCE_QUOTA_EXCEEDED, 6
      value :LOCATION_TAX_POLICY_VIOLATED, 10
      value :USER_PROJECT_DENIED, 11
      value :CONSUMER_SUSPENDED, 12
      value :CONSUMER_INVALID, 14
      value :SECURITY_POLICY_VIOLATED, 15
      value :ACCESS_TOKEN_EXPIRED, 16
      value :ACCESS_TOKEN_SCOPE_INSUFFICIENT, 17
      value :ACCOUNT_STATE_INVALID, 18
      value :ACCESS_TOKEN_TYPE_UNSUPPORTED, 19
      value :CREDENTIALS_MISSING, 20
      value :RESOURCE_PROJECT_INVALID, 21
      value :SESSION_COOKIE_INVALID, 23
      value :USER_BLOCKED_BY_ADMIN, 24
      value :RESOURCE_USAGE_RESTRICTION_VIOLATED, 25
      value :SYSTEM_PARAMETER_UNSUPPORTED, 26
      value :ORG_RESTRICTION_VIOLATION, 27
      value :ORG_RESTRICTION_HEADER_INVALID, 28
      value :SERVICE_NOT_VISIBLE, 29
      value :GCP_SUSPENDED, 30
    end
  end
end

module Google
  module Api
    ErrorReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.ErrorReason").enummodule
  end
end
