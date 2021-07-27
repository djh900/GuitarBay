Rails.application.routes.draw do
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'index', to: 'pages#home'
  get 'help', to: 'pages#help'
  resources :listings
end
