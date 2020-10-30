Rails.application.routes.draw do
  resources :stays
  resources :destinations
  resources :hosts
  resources :users
  post "/users/session/login", to: "users#login"
end
