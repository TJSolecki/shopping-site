Rails.application.routes.draw do
  get 'access/new'
  post 'access/create'
  get 'access/destroy'
  get 'admin/order_num'
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  # get '/', to:'shoppper#index', as: 'shopper'
  root "shopper#index", as: "shopper"
  get '/:id', to: 'shopper#show'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
