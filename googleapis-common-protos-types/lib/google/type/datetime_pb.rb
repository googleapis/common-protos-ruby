# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/datetime.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'


descriptor_data = "\n\x1agoogle/type/datetime.proto\x12\x0bgoogle.type\x1a\x1egoogle/protobuf/duration.proto\"\xe0\x01\n\x08\x44\x61teTime\x12\x0c\n\x04year\x18\x01 \x01(\x05\x12\r\n\x05month\x18\x02 \x01(\x05\x12\x0b\n\x03\x64\x61y\x18\x03 \x01(\x05\x12\r\n\x05hours\x18\x04 \x01(\x05\x12\x0f\n\x07minutes\x18\x05 \x01(\x05\x12\x0f\n\x07seconds\x18\x06 \x01(\x05\x12\r\n\x05nanos\x18\x07 \x01(\x05\x12/\n\nutc_offset\x18\x08 \x01(\x0b\x32\x19.google.protobuf.DurationH\x00\x12*\n\ttime_zone\x18\t \x01(\x0b\x32\x15.google.type.TimeZoneH\x00\x42\r\n\x0btime_offset\"\'\n\x08TimeZone\x12\n\n\x02id\x18\x01 \x01(\t\x12\x0f\n\x07version\x18\x02 \x01(\tBi\n\x0f\x63om.google.typeB\rDateTimeProtoP\x01Z<google.golang.org/genproto/googleapis/type/datetime;datetime\xf8\x01\x01\xa2\x02\x03GTPb\x06proto3"

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
  module Type
    DateTime = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.DateTime").msgclass
    TimeZone = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.TimeZone").msgclass
  end
end

#### Source proto file: google/type/datetime.proto ####
#
# // Copyright 2021 Google LLC
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
# import "google/protobuf/duration.proto";
#
# option cc_enable_arenas = true;
# option go_package = "google.golang.org/genproto/googleapis/type/datetime;datetime";
# option java_multiple_files = true;
# option java_outer_classname = "DateTimeProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // Represents civil time (or occasionally physical time).
# //
# // This type can represent a civil time in one of a few possible ways:
# //
# //  * When utc_offset is set and time_zone is unset: a civil time on a calendar
# //    day with a particular offset from UTC.
# //  * When time_zone is set and utc_offset is unset: a civil time on a calendar
# //    day in a particular time zone.
# //  * When neither time_zone nor utc_offset is set: a civil time on a calendar
# //    day in local time.
# //
# // The date is relative to the Proleptic Gregorian Calendar.
# //
# // If year is 0, the DateTime is considered not to have a specific year. month
# // and day must have valid, non-zero values.
# //
# // This type may also be used to represent a physical time if all the date and
# // time fields are set and either case of the `time_offset` oneof is set.
# // Consider using `Timestamp` message for physical time instead. If your use
# // case also would like to store the user's timezone, that can be done in
# // another field.
# //
# // This type is more flexible than some applications may want. Make sure to
# // document and validate your application's limitations.
# message DateTime {
#   // Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a
#   // datetime without a year.
#   int32 year = 1;
#
#   // Required. Month of year. Must be from 1 to 12.
#   int32 month = 2;
#
#   // Required. Day of month. Must be from 1 to 31 and valid for the year and
#   // month.
#   int32 day = 3;
#
#   // Required. Hours of day in 24 hour format. Should be from 0 to 23. An API
#   // may choose to allow the value "24:00:00" for scenarios like business
#   // closing time.
#   int32 hours = 4;
#
#   // Required. Minutes of hour of day. Must be from 0 to 59.
#   int32 minutes = 5;
#
#   // Required. Seconds of minutes of the time. Must normally be from 0 to 59. An
#   // API may allow the value 60 if it allows leap-seconds.
#   int32 seconds = 6;
#
#   // Required. Fractions of seconds in nanoseconds. Must be from 0 to
#   // 999,999,999.
#   int32 nanos = 7;
#
#   // Optional. Specifies either the UTC offset or the time zone of the DateTime.
#   // Choose carefully between them, considering that time zone data may change
#   // in the future (for example, a country modifies their DST start/end dates,
#   // and future DateTimes in the affected range had already been stored).
#   // If omitted, the DateTime is considered to be in local time.
#   oneof time_offset {
#     // UTC offset. Must be whole seconds, between -18 hours and +18 hours.
#     // For example, a UTC offset of -4:00 would be represented as
#     // { seconds: -14400 }.
#     google.protobuf.Duration utc_offset = 8;
#
#     // Time zone.
#     TimeZone time_zone = 9;
#   }
# }
#
# // Represents a time zone from the
# // [IANA Time Zone Database](https://www.iana.org/time-zones).
# message TimeZone {
#   // IANA Time Zone Database time zone, e.g. "America/New_York".
#   string id = 1;
#
#   // Optional. IANA Time Zone Database version number, e.g. "2019a".
#   string version = 2;
# }
