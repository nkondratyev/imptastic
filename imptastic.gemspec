# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'imptastic/version'

Gem::Specification.new do |gem|
  gem.name          = "imptastic"
  gem.version       = Imptastic::VERSION
  gem.authors       = ["Nikolay Kondratyev"]
  gem.email         = ["nkondratyev@yandex.ru"]
  gem.description   = %q{Custom formtastic inputs}
  gem.summary       = %q{Custom formtastic inputs}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('formtastic', '~> 2.2')
  gem.add_dependency('railties', '~> 3.0')
end
