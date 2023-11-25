Rails.application.routes.draw do
  get 'songs/index'
  get 'playlists/index'
  get 'playlists/new'
  get 'playlists/create'
  get 'playlists/destroy'
  get 'playlists/nextsong'
  get 'playlists/show'
  get 'top/index'
  get 'users/logout'
  post 'users/login'
  
  get 'users/login'
  get 'users/new'
  get 'users/complete'
  post 'users/login'
  
  resources :users
  resources :playlists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "top#index"
  root "playlists#new"
end