name = "only_blank"
require File.expand_path("../lib/#{name}/version", __FILE__)

Gem::Specification.new do |s|
  s.name                        = name
  s.version                     = OnlyBlank::VERSION
  s.date                        = Time.now.strftime('%F')
  s.required_ruby_version       = '>= 2.2.2'
  s.authors                     = ['Billy.Zheng(zw963)']
  s.email                       = ['vil963@gmail.com']
  s.summary                     = 'The missing blank? method for ruby.'
  s.description                 = 'A tiny library for bring the awesome `blank?` method to ruby.
Along with the fastest [fast_blank] gem for `String#blank?`.'
  s.homepage                    = 'http://github.com/zw963/only_blank'
  s.license                     = 'MIT'
  s.require_paths               = ['lib']
  s.files                       = `git ls-files bin lib *.md LICENSE`.split("\n")

  s.add_runtime_dependency 'fast_blank', '>= 1.0'
  s.add_development_dependency 'rake'
end
