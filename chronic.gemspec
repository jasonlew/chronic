$:.unshift File.expand_path('../lib', __FILE__)
require 'chronic'

Gem::Specification.new do |s|
  s.name = 'chronic_2011'
  s.version = Chronic::VERSION
  s.summary     = 'Natural language date/time parsing'
  s.description = 'The Chronic gem is a natural language date/time parser written in pure Ruby. This gem, Chronic 2011, returns a Date or Time depending on the user input.'
  s.authors  = ['Jason Lew']
  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = %w[README.md HISTORY.md LICENSE]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test`.split("\n")

  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
end