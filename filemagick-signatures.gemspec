# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "filemagick-signatures"
  spec.version       = "0.0.1"
  spec.authors       = ["Kashyap"]
  spec.email         = ["kashyap.kmbc@gmail.com"]
  spec.summary       = %q{
This module contains the signatures for use either independently or via the
`filemagick` gem. The various file signatures currently supported are taken
from [Gary Kessler's website][http://www.garykessler.net/library/file_sigs.html]
}
  spec.description    = %q{

This module contains the signatures for use either independently or via the
`filemagick` gem. The various file signatures currently supported are taken
from [Gary Kessler's website][http://www.garykessler.net/library/file_sigs.html]


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
}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end
