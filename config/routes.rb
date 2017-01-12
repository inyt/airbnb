Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :rooms, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:create]
    collection do
      get :search
    end
  end
  root 'rooms#index'
end
