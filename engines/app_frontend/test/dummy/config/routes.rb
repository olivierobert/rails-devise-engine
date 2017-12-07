Rails.application.routes.draw do
  mount AppFrontend::Engine => "/app_frontend"
end
