Rails.application.routes.draw do
  get 'users/logout'
  post 'users/login'
  root "users#index"
  
  get 'users/login'
  get 'users/new'
  get 'users/complete'
  post 'users/login'
  
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end