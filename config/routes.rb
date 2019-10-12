Rails.application.routes.draw do

  resources :blogs
  resources :portfolios

  get '/home',    to: 'pages#home'
  get '/about',   to: 'pages#about'
  get '/contact', to: 'pages#contact'

  root 'pages#home'
end
