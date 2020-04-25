Rails.application.routes.draw do

  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :blogs do
    member do
      patch :toggle_status
    end
  end

  resources :portfolios, except: [:show]do
    put :sort, on: :collection
  end

  get '/portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get '/angular-items', to: 'portfolios#angular'

  get '/home',    to: 'pages#home'
  get '/about-me',   to: 'pages#about'
  get '/contact', to: 'pages#contact'

  root 'pages#home'
end
