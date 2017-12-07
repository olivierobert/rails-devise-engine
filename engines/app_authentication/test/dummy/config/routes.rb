Rails.application.routes.draw do
  mount AppAuthentication::Engine => "/app_authentication"
end
