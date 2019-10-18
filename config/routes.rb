Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :blogs do
    member do
      patch :toggle_status
    end
  end

  resources :portfolios
  get '/angular-items', to: 'portfolio#angular'

  get '/home',    to: 'pages#home'
  get '/about',   to: 'pages#about'
  get '/contact', to: 'pages#contact'

  root 'pages#home'
end
