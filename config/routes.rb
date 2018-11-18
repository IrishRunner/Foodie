Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/menus', to: 'static_pages#menus'
  get '/contact', to: 'static_pages#contact'
  get '/login', to: 'static_pages#login'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
end
