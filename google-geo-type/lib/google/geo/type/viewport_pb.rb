# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/geo/type/viewport.proto

require 'google/protobuf'

require 'google/type/latlng_pb'


descriptor_data = "\n\x1egoogle/geo/type/viewport.proto\x12\x0fgoogle.geo.type\x1a\x18google/type/latlng.proto\"O\n\x08Viewport\x12 \n\x03low\x18\x01 \x01(\x0b\x32\x13.google.type.LatLng\x12!\n\x04high\x18\x02 \x01(\x0b\x32\x13.google.type.LatLngBo\n\x13\x63om.google.geo.typeB\rViewportProtoP\x01Z@google.golang.org/genproto/googleapis/geo/type/viewport;viewport\xa2\x02\x04GGTPb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Geo
    module Type
      Viewport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.geo.type.Viewport").msgclass
    end
  end
end

#### Source proto file: google/geo/type/viewport.proto ####
#
# // Copyright 2019 Google LLC.
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
# //
#
# syntax = "proto3";
#
# package google.geo.type;
#
# import "google/type/latlng.proto";
#
# option go_package = "google.golang.org/genproto/googleapis/geo/type/viewport;viewport";
# option java_multiple_files = true;
# option java_outer_classname = "ViewportProto";
# option java_package = "com.google.geo.type";
# option objc_class_prefix = "GGTP";
#
# // A latitude-longitude viewport, represented as two diagonally opposite `low`
# // and `high` points. A viewport is considered a closed region, i.e. it includes
# // its boundary. The latitude bounds must range between -90 to 90 degrees
# // inclusive, and the longitude bounds must range between -180 to 180 degrees
# // inclusive. Various cases include:
# //
# //  - If `low` = `high`, the viewport consists of that single point.
# //
# //  - If `low.longitude` > `high.longitude`, the longitude range is inverted
# //    (the viewport crosses the 180 degree longitude line).
# //
# //  - If `low.longitude` = -180 degrees and `high.longitude` = 180 degrees,
# //    the viewport includes all longitudes.
# //
# //  - If `low.longitude` = 180 degrees and `high.longitude` = -180 degrees,
# //    the longitude range is empty.
# //
# //  - If `low.latitude` > `high.latitude`, the latitude range is empty.
# //
# // Both `low` and `high` must be populated, and the represented box cannot be
# // empty (as specified by the definitions above). An empty viewport will result
# // in an error.
# //
# // For example, this viewport fully encloses New York City:
# //
# // {
# //     "low": {
# //         "latitude": 40.477398,
# //         "longitude": -74.259087
# //     },
# //     "high": {
# //         "latitude": 40.91618,
# //         "longitude": -73.70018
# //     }
# // }
# message Viewport {
#   // Required. The low point of the viewport.
#   google.type.LatLng low = 1;
#
#   // Required. The high point of the viewport.
#   google.type.LatLng high = 2;
# }
