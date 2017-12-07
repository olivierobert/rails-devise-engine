Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  mount AppAuthentication::Engine, at: '/'
  mount AppFrontend::Engine, at: '/'

  root 'home#index'
end
