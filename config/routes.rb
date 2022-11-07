Rails.application.routes.draw do
  resources :contents
  resources :pages
  resources :teams
  resources :blogs
  devise_for :users
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
