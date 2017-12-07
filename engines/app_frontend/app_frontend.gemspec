$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'app_frontend/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'app_frontend'
  s.version     = AppFrontend::VERSION
  s.authors     = ['Olivier Robert']
  s.email       = ['olivierobert@gmail.com']
  s.homepage    = 'https://github.com/olivierobert/rails-devise-engine'
  s.summary     = 'Dummy engine for the AppAuthentication POC.'
  s.description = 'Dummy engine for the AppAuthentication POC.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1.4'
end
