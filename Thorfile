#!/usr/bin/ruby

$:.unshift File.expand_path("../lib", __FILE__)

require 'gmailer/version'

class Spec < Thor
  desc 'all', 'Run all specs'
  def all
    system 'bundle exec rspec spec'
  end
end

class Gem < Thor
  desc 'build', 'Build gem'
  def build
    system "gem build gmailer.gemspec"
  end

  desc 'install', 'Install gem'
  def install
    system "gem install -l gmailer-#{Gmailer::VERSION}"
  end
end
