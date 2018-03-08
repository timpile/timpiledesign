Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :users, only: [:show]
  resources :messages, only: [:create]

  resources :posts do
    member do
      get :toggle_status
    end
  end

  get 'blog', to: 'pages#blog'

  mount ActionCable.server => '/cable'
  
  root to: 'pages#home'

end
