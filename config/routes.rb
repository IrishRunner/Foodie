Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'products/index'
#  get 'sessions/new'
#  get 'users/new'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/menus', to: 'static_pages#menus'
  get '/contact', to: 'static_pages#contact'
#  get '/sample', to: 'static_pages#sample'
  get '/sample', to: 'products#sample'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
    
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
end
