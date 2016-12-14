Rails.application.routes.draw do
  devise_for :users
  resources :rooms, only: :index
  root 'rooms#index'
end
