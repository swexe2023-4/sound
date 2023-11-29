Rails.application.routes.draw do
  # root "users#index"
  # post 'users/login'
  
  
  # get 'users/login'
  # get 'users/logout'
  # get 'users/new'
  # get 'users/complete'
  # post 'users/login'

  # post 'users/make', to: 'users#make'
  
  # resources :users
  
  root "users#logout"  
  
  post 'users/login'
  get 'users/login'
  get 'users/logout'
  get 'users/new'
  get 'users/complete'

  post 'users/make', to: 'users#make'
  
  resources :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end