Rails.application.routes.draw do
  resources :rotations
  resources :crypto_portals
  devise_for :users

  get 'home', to: 'statics#index'
  get 'welcome', to: 'statics#welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "statics#index"
end
