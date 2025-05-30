# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/quaternion.proto

require 'google/protobuf'


descriptor_data = "\n\x1cgoogle/type/quaternion.proto\x12\x0bgoogle.type\"8\n\nQuaternion\x12\t\n\x01x\x18\x01 \x01(\x01\x12\t\n\x01y\x18\x02 \x01(\x01\x12\t\n\x01z\x18\x03 \x01(\x01\x12\t\n\x01w\x18\x04 \x01(\x01\x42o\n\x0f\x63om.google.typeB\x0fQuaternionProtoP\x01Z@google.golang.org/genproto/googleapis/type/quaternion;quaternion\xf8\x01\x01\xa2\x02\x03GTPb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
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
  module Type
    Quaternion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.Quaternion").msgclass
  end
end

#### Source proto file: google/type/quaternion.proto ####
#
# // Copyright 2025 Google LLC
# //
# // Licensed under the Apache License, Version 2.0 (the "License");
# // you may not use this file except in compliance with the License.
# // You may obtain a copy of the License at
# //
# //     http://www.apache.org/licenses/LICENSE-2.0
# //
# // Unless required by applicable law or agreed to in writing, software
# // distributed under the License is distributed on an "AS IS" BASIS,
# // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# // See the License for the specific language governing permissions and
# // limitations under the License.
#
# syntax = "proto3";
#
# package google.type;
#
# option cc_enable_arenas = true;
# option go_package = "google.golang.org/genproto/googleapis/type/quaternion;quaternion";
# option java_multiple_files = true;
# option java_outer_classname = "QuaternionProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // A quaternion is defined as the quotient of two directed lines in a
# // three-dimensional space or equivalently as the quotient of two Euclidean
# // vectors (https://en.wikipedia.org/wiki/Quaternion).
# //
# // Quaternions are often used in calculations involving three-dimensional
# // rotations (https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation),
# // as they provide greater mathematical robustness by avoiding the gimbal lock
# // problems that can be encountered when using Euler angles
# // (https://en.wikipedia.org/wiki/Gimbal_lock).
# //
# // Quaternions are generally represented in this form:
# //
# //     w + xi + yj + zk
# //
# // where x, y, z, and w are real numbers, and i, j, and k are three imaginary
# // numbers.
# //
# // Our naming choice `(x, y, z, w)` comes from the desire to avoid confusion for
# // those interested in the geometric properties of the quaternion in the 3D
# // Cartesian space. Other texts often use alternative names or subscripts, such
# // as `(a, b, c, d)`, `(1, i, j, k)`, or `(0, 1, 2, 3)`, which are perhaps
# // better suited for mathematical interpretations.
# //
# // To avoid any confusion, as well as to maintain compatibility with a large
# // number of software libraries, the quaternions represented using the protocol
# // buffer below *must* follow the Hamilton convention, which defines `ij = k`
# // (i.e. a right-handed algebra), and therefore:
# //
# //     i^2 = j^2 = k^2 = ijk = −1
# //     ij = −ji = k
# //     jk = −kj = i
# //     ki = −ik = j
# //
# // Please DO NOT use this to represent quaternions that follow the JPL
# // convention, or any of the other quaternion flavors out there.
# //
# // Definitions:
# //
# //   - Quaternion norm (or magnitude): `sqrt(x^2 + y^2 + z^2 + w^2)`.
# //   - Unit (or normalized) quaternion: a quaternion whose norm is 1.
# //   - Pure quaternion: a quaternion whose scalar component (`w`) is 0.
# //   - Rotation quaternion: a unit quaternion used to represent rotation.
# //   - Orientation quaternion: a unit quaternion used to represent orientation.
# //
# // A quaternion can be normalized by dividing it by its norm. The resulting
# // quaternion maintains the same direction, but has a norm of 1, i.e. it moves
# // on the unit sphere. This is generally necessary for rotation and orientation
# // quaternions, to avoid rounding errors:
# // https://en.wikipedia.org/wiki/Rotation_formalisms_in_three_dimensions
# //
# // Note that `(x, y, z, w)` and `(-x, -y, -z, -w)` represent the same rotation,
# // but normalization would be even more useful, e.g. for comparison purposes, if
# // it would produce a unique representation. It is thus recommended that `w` be
# // kept positive, which can be achieved by changing all the signs when `w` is
# // negative.
# //
# message Quaternion {
#   // The x component.
#   double x = 1;
#
#   // The y component.
#   double y = 2;
#
#   // The z component.
#   double z = 3;
#
#   // The scalar component.
#   double w = 4;
# }
