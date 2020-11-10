Rails.application.routes.draw do

  get "/users", to: "users#index"
  
  resources :reviews
  resource :users
  resources :stays
  resources :destinations
  resources :hosts
  
  namespace :api do
    namespace :v1 do

      post "/auth", to: "auth#create"
      get '/current_user', to: 'auth#show'
    end
  end

  
end
