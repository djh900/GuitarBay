Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'index', to: 'pages#home'
  get 'help', to: 'pages#help'
  get 'my-account', to: 'pages#my_account'
  get 'success', to: 'pages#success', as: 'payment_success'
  post 'webhook', to: 'pages#webhook' , as: 'webhook'
  resources :listings
end
