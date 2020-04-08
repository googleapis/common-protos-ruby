# Release History

### 1.0.5 / 2020-04-08

* Add JWT location support in Google::Api::AuthProvider.
* Add "protocol" field and a "disable_auth" option to Google::Api::BackendRule.
* Add "launch_stage" field to Google::Api::MetricDescriptor and Google::Api::MonitoredResourceDescriptor.
* Add Google::Api::ResourceDescriptor and Google::Api::ResourceReference types and remove obsolete Google::Api::Resource type.
* Remove obsolete "experimental" field from Google::Api::Service type.
* Add Google::Rpc::ErrorInfo type.
* Add Google::Type::DateTime, Google::Type::Month, and Google::Type::TimeZone types.
* Require protobuf 3.11 and grpc 1.27.

### 1.0.4 / 2019-04-03

* Add WaitOperation RPC to operations_pb.rb and update documentation.
* Add new common types for:
  + google/api/resource.proto
  + google/type/calendar_period.proto
  + google/type/expr.proto
  + google/type/fraction.proto
  + google/type/quaternion.proto
 