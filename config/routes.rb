Rails.application.routes.draw do
  get 'search/create'
  resources :projects
  resources :statuses
  resources :clients
  resources :companies
  # get 'home/index'
  root 'home#index'
  resources :cities
  resources :states
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
