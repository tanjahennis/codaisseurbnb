Rails.application.routes.draw do
  resources :themes
  get 'pages/home'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :rooms do
    resources :bookings, only: [:create]
  end
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos

  namespace :api do
    resources :rooms do
      resources :bookings, only: [:create, :update, :destroy]
    end
  end
end
