## Common Protos Ruby

[![Gem Version](https://badge.fury.io/rb/googleapis-common-protos.svg)](https://badge.fury.io/rb/googleapis-common-protos) [![Gem Version](https://badge.fury.io/rb/googleapis-common-protos-types.svg)](https://badge.fury.io/rb/googleapis-common-protos-types)

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

1.  Update the sub-module containing all of Google's public .proto files:

    ```bash
    $ git submodule update --remote googleapis
    ```

2.  If necessary, update the list of protos to include. These are globs in the
    `PROTO_GLOBS` array in the library's Toys script (e.g. for message types:
    [googleapis-common-protos-types/.toys.rb](googleapis-common-protos-types/.toys.rb)).
    This is needed only if new directories are added (which should be rare).

3.  Compile new proto classes. This can be run at the top level to recompile
    all gems, or in a gem's directory to recompile only that one.

    ```bash
    $ toys compile
    ```

4.  Update Gem version (which is located in the `.gemspec` file), and write an
    entry in the `CHANGELOG.md`. Create and merge a PR for this, and tag it
    with the gem name and version.

5.  Build and release the gem:

    ```bash
    $ cd $GEM_TO_RELEASE
    $ toys release
    ```
