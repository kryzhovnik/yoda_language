# coding: UTF-8

Gem::Specification.new do |s|
  s.name              = "yoda_language"
  s.version           = "0.0.1"
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Andrey Samsonov"]
  s.email             = ["andrey.samsonov@gmail.com"]
  s.homepage          = "http://github.com/kryzhovnik/yoda_language"
  s.summary           = "yoda_language helper"
  s.description       = "Adds yoda_language helper to rails views"
  s.rubyforge_project = s.name

  s.required_rubygems_version = ">= 1.3.6"
  
  # If you have runtime dependencies, add them here
  s.add_runtime_dependency "unicode_utils", "~> 1.0"
  
  # If you have development dependencies, add them here
  # s.add_development_dependency "another", "= 0.9"

  # The list of files to be contained in the gem
  s.files         = `git ls-files`.split("\n")
  # s.executables   = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  # s.extensions    = `git ls-files ext/extconf.rb`.split("\n")
  
  s.require_path = 'lib'

  # For C extensions
  # s.extensions = "ext/extconf.rb"
end
