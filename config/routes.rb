Rails.application.routes.draw do

  resources :blogs do
    member do
      patch :toggle_status
    end
  end
  resources :portfolios

  get '/home',    to: 'pages#home'
  get '/about',   to: 'pages#about'
  get '/contact', to: 'pages#contact'

  root 'pages#home'
end
