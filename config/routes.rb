Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'index', to: 'pages#home'
  get 'help', to: 'pages#help'
  resources :listings
end
