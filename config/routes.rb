Rails.application.routes.draw do

  root 'pages#home'
  resources :blogs
  resources :portfolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
end
