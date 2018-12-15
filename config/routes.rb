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
  get '/dukkah', to: 'static_pages#dukkah'
  get '/farro', to: 'static_pages#farro'
  get '/shrimp', to: 'static_pages#shrimp'
  get '/pasta', to: 'static_pages#pasta'
  get '/noodle', to: 'static_pages#noodle'
  get '/lentils', to: 'static_pages#lentils'
  get '/schnitzel', to: 'static_pages#schnitzel'
  get '/jalapeno', to: 'static_pages#jalapeno'
  get '/sample', to: 'products#sample'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get '/mealselect', to: 'products#index'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
    
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
end
