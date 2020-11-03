Rails.application.routes.draw do

  get "/users", to: "users#index"

  resource :users
  resources :stays
  resources :destinations
  resources :hosts
  
   namespace :api do
     namespace :v1 do

      post "/auth", to: "auth#create"
      
    end
  end

  
end
