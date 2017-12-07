AppAuthentication::Engine.routes.draw do
  devise_for :users,
             class_name: 'AppAuthentication::User',
             module: :devise,
             path: 'auth',
             path_names: {
               sign_in: 'signin',
               sign_up: 'signup',
               sign_out: 'signout'
             }
end
