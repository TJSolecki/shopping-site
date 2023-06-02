Rails.application.routes.draw do
  resources :lineitems
  resources :carts
  # get '/', to:'shoppper#index', as: 'shopper'
  root "shopper#index", as: "shopper"
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
