Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :order_items
  resources :orders
  resources :additional_infos
  resources :products
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
