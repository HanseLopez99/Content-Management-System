Rails.application.routes.draw do
  resources :contents
  resources :pages
  resources :teams
  resources :blogs
  devise_for :users
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Create route for /subdomain/ to redirect to /subdomain/blogs/:blog_id
  get '/:subdomain', to: 'blogs#show', id: 1, as: 'subdomain'

  # Create route for /subdomain/subtopic to redirect to /subdomain/subtopic/1
  get '/:subdomain/:subtopic', to: 'pages#show', id: 1, as: 'subdomain_page'

  # Defines the root path route ("/")
  root "home#index"

end
