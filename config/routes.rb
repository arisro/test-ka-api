KaApi::Application.routes.draw do
  root 'users#not_found'

  get 'users/login', to: 'users#login'
  resources :users
end