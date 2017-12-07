require 'app_authentication/engine'
require 'devise'

module AppAuthentication
  mattr_accessor :devise_class
end
