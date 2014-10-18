# Filemagick::Signatures

This module contains the signatures for use
either independently or via the `filemagick` library. The various file
signatures currently supported are taken from [Gary Kessler's
website][2]

The signatures are stored in a YAML file in the following format:

```yaml
- mime: 'application/pdf'
  extensions:
    - 'pdf'
  signatures:
    starting:
      offset: 0
      hexcodes:
        - '25504446'
    trailing:
      offset: 0
      hexcodes:
        - '0a2525454f46'
        - '0a2525454f460a'
        - '0d0a2525454f460d0a'
        - '0d2525454f460d'
```

* The files typically have a `starting` and a `trailing` signatures.
* The `offset` part is the number of bytes to ignore from the beginning
  in the case of starting signature and from the end in case of trailing
  signature. This will be a number.
* `hexcodes` key holds a list of possible signatures. The validation
  logic takes into account all the signatures and it will be a `true`
  case if the file has any one of the specified signatures.

If a new signature has to be added, then the details have to be
specified in the same manner.

[2]: http://www.garykessler.net/library/file_sigs.html

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'filemagick-signatures'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install filemagick-signatures

## Usage


## Contributing

1. Fork it ( https://github.com/[my-github-username]/filemagick-signatures/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
