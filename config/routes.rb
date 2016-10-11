Rails.application.routes.draw do
  resources :themes
  get 'pages/home'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :rooms
end
