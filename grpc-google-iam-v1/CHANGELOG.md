# Release History

### 1.1.0 (2022-04-05)

* Added audit_configs field to the Policy object.
* Added update_mask parameter to the set_iam_policy call.

### 1.0.0 (2021-09-03)

* Bumped version to 1.0.0.
* Removed unnecessary files from the gem package.
* Update googleapis-common-protos dependency to 1.3.12.

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
