# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'googleplay_scraper/version'

Gem::Specification.new do |gem|
  gem.name          = "googleplay_scraper"
  gem.version       = GooglePlayScraper::VERSION
  gem.authors       = ["Takuya Murakami"]
  gem.email         = ["tmurakam@tmurakam.org"]
  gem.description   = %q{Scraping and download CSV data from Google Play developer console and Google Checkout.}
  gem.summary       = %q{Scraper for Google Play developer console and Google checkout}
  gem.homepage      = "https://github.com/tmurakam/googleplay-scraper"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('mechanize', '>= 2.5.0')

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rdoc'
end
