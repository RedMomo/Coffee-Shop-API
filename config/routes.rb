Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :order_items
  resources :orders
  resources :additional_infos
  resources :products
  resources :users

  post "/users", to: "users#create"
  get "/me", to: "users#me"
  post "/auth/login", to: "auth#login"

  get '/current_cart', to: 'carts#current_cart'

  # Defines the root path route ("/")
  # root "articles#index"
end
