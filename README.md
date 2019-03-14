## Common Protos Ruby

[![CircleCI](https://circleci.com/gh/googleapis/common-protos-ruby.svg?style=svg)](https://circleci.com/gh/googleapis/common-protos-ruby) [![Gem Version](https://badge.fury.io/rb/googleapis-common-protos.svg)](https://badge.fury.io/rb/googleapis-common-protos) [![Gem Version](https://badge.fury.io/rb/googleapis-common-protos-types.svg)](https://badge.fury.io/rb/googleapis-common-protos-types)

This repository is a home for the [protocol buffer](https://developers.google.com/protocol-buffers/) types which are
common dependencies throughout the Google API ecosystem, generated for Ruby.
The protobuf definitions for these generated Ruby classes are provided in the
[API Common Protos](https://github.com/googleapis/api-common-protos) repository.

## Using these generated classes

See [googleapis-common-protos](googleapis-common-protos/README.md) and [googleapis-common-protos-types](googleapis-common-protos-types/README.md).

These packages are also available from [rubygems](https://rubygems.org):
  + https://rubygems.org/gems/googleapis-common-protos
  + https://rubygems.org/gems/googleapis-common-protos-types

## Updating the gems

To add, remove, or modify the common types in these gems do the following.

1. Update the sub-module containing all of Google's public .proto files:

    ```bash
    $ cd googleapis
    $ git pull
    ```

1. Edit the appropriate `Rakefile`:

    For message types: [googleapis-common-protos-types/Rakefile](googleapis-common-protos-types/Rakefile)
    For grpc types: [googleapis-common-protos/Rakefile](googleapis-common-protos/Rakefile)

    Update the `protos` section of the `Rakefile`. For example:

    ```ruby
    protos = [
        "../googleapis/google/api/*.proto",
        # list all protos that should be included in the gem here
      ]
    ```

1. Build the gems as usual:

    ```bash
    $ cd googleapis-common-protos-types # or googleapis-common-protos
    $ bundle install
    $ bundle exec rake build
    ```

    Finally, double check that the local gem in `pkg` include all of the types before publishing it to Rubygems.
