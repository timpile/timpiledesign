Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :users, only: [:show]
  resources :messages, only: [:create]
  resources :posts
  root to: 'pages#home'
end
