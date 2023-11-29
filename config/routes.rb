Rails.application.routes.draw do
  # root "users#index"
  # post 'users/login'
  get 'songs/index'
  post 'playlists/index'
  post 'playlists/new'
  get 'playlists/create'
  get 'playlists/destroy'
  get 'playlists/nextsong'
  get 'playlists/show'
  get 'top/index'
  get 'users/logout'
  post 'users/login'
  
  
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
  
  resources :playlists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "top#index"
  # root "playlists#new"
end