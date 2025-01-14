# Release History

### 1.9.0 (2025-01-14)

#### Features

* Added ResourcePolicyMember type ([#344](https://github.com/googleapis/common-protos-ruby/issues/344)) 

### 1.8.0 (2024-06-11)

#### Features

* Support for google-protobuf 4.x ([#315](https://github.com/googleapis/common-protos-ruby/issues/315)) 

### 1.7.0 (2024-02-23)

#### Features

* Update minimum Ruby version to 2.7 ([#246](https://github.com/googleapis/common-protos-ruby/issues/246)) 

### 1.6.0 (2024-02-13)

#### Features

* Automated update of grpc-google-iam-v1 ([#240](https://github.com/googleapis/common-protos-ruby/issues/240)) 

### 1.5.0 (2024-01-08)

#### Features

* Automated update of grpc-google-iam-v1 ([#225](https://github.com/googleapis/common-protos-ruby/issues/225)) 

### 1.4.0 (2023-12-04)

#### Features

* Automated update of grpc-google-iam-v1 ([#211](https://github.com/googleapis/common-protos-ruby/issues/211)) 

### 1.3.0 (2023-08-07)

#### Features

* Updated generated protobuf output to use binary descriptors for better future compatibility ([#172](https://github.com/googleapis/common-protos-ruby/issues/172)) 

### 1.2.0 (2022-08-17)

#### Features

* Update minimum Ruby version to 2.6 ([#75](https://github.com/googleapis/common-protos-ruby/issues/75)) 

### 1.1.1 (2022-06-23)

#### Bug Fixes

* Remove some unnecessary requires

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
