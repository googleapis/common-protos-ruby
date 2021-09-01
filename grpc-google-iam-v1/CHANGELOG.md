# Release History

### [0.6.12](https://www.github.com/googleapis/common-protos-ruby/compare/grpc-google-iam-v1/v0.6.11...grpc-google-iam-v1/v0.6.12) (2021-09-01)


### Bug Fixes

* **iam-v1:** Removed unnecessary files from the gem package ([16c1725](https://www.github.com/googleapis/common-protos-ruby/commit/16c17257bcbe7fd3856878fa5ac51e4dd2ae4d98))

### 0.6.11 / 2021-02-01

* Fully qualify proto names internally.
* Update googleapis-common-protos dependency to 1.3.11.
* Require protobuf 3.14.

### 0.6.10 / 2020-04-08

* Add "options" field to Google::Iam::V1::GetIamPolicyRequest.
* Support conditional policy bindings via the "condition" field in Google::Iam::V1::Binding.
* Support policy delta types.
* Update googleapis-common-protos dependency to 1.3.10.
* Require protobuf 3.11.
