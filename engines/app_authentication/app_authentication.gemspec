$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "app_authentication/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "app_authentication"
  s.version     = AppAuthentication::VERSION
  s.authors     = ["Olivier Robert"]
  s.email       = ["olivierobert@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AppAuthentication."
  s.description = "TODO: Description of AppAuthentication."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
