$:.push File.expand_path('../lib', __FILE__)

require 'app_authentication/version'

Gem::Specification.new do |s|
  s.name        = 'app_authentication'
  s.version     = AppAuthentication::VERSION
  s.authors     = ['Olivier Robert']
  s.email       = ['olivierobert@gmail.com']
  s.homepage    = 'https://github.com/olivierobert/rails-devise-engine'
  s.summary     = 'Re-usable authentication engine using Devise'
  s.description = 'Research how to isolate authentication functionality into a Rails engine so that it can be-used as-is in other applications.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1.4'
  s.add_dependency 'pg'
  s.add_dependency 'devise'
end
