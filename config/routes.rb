Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  resources :users, only: [:show]
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root to: 'pages#home'
end
