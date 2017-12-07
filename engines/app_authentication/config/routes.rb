AppAuthentication::Engine.routes.draw do
  devise_for :users, class_name: 'AppAuthentication::User', module: :devise
end
