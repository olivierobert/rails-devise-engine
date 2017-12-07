$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'app_frontend/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'app_frontend'
  s.version     = AppFrontend::VERSION
  s.authors     = ['Olivier Robert']
  s.email       = ['olivierobert@gmail.com']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of AppFrontend.'
  s.description = 'TODO: Description of AppFrontend.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1.4'

  s.add_development_dependency 'sqlite3'
end
