$:.unshift File.expand_path("../lib", __FILE__)

require 'gmailer/version'

Gem::Specification.new do |gem|
  # http://docs.rubygems.org/read/chapter/20
  gem.name    = 'gmailer'
  gem.version = Gmailer::VERSION
  gem.date    = Time.now.strftime('%Y-%m-%d')
  gem.summary = 'Email from Gmail'
  gem.description = 'Send email from gmail account'
  gem.author  = '@alobato'
  gem.files = Dir['{lib,spec}/**/*', 'README*', 'Gemfile', 'Thorfile', '*.gemspec']
  gem.add_dependency('mail')
  gem.add_development_dependency(['rspec', 'thor'])
end
