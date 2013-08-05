# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scraper/version'

Gem::Specification.new do |spec|
  spec.name          = "scraper"
  spec.version       = Scraper::VERSION
  spec.authors       = ["phyten"]
  spec.email         = ["phyten.obr@gmail.com"]
  spec.description   = "The purpose of this library is that scraping."
  spec.summary       = "The purpose of this library is that scraping."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'mechanize'
  spec.add_dependency 'hpricot'

  spec.add_development_dependency 'bundler', ['>= 1.0.0']
  spec.add_development_dependency 'rake', ['>= 0']
  spec.add_development_dependency 'rspec', ['>= 0']
  spec.add_development_dependency 'rdoc', ['>= 0']
  spec.add_development_dependency 'pry'  
end
