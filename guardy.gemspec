# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guardy/version'

Gem::Specification.new do |spec|
  spec.name          = 'guardy'
  spec.version       = Guardy::VERSION
  spec.authors       = ['Hunter Madison']
  spec.email         = ['hmadison@users.noreply.github.com']

  spec.summary       = 'Chained conditional guards'
  spec.homepage      = 'https://github.com/hmadison/guardy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
                                        .reject { |f| f.match(%r{^(test)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
