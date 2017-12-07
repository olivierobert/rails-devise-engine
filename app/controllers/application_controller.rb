class ApplicationController < ActionController::Base
  helper AppAuthentication::Engine.helpers

  protect_from_forgery with: :exception
end
