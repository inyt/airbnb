Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :rooms do
    resources :reservations, only: [:create]
    collection do
      get :search
    end
  end
  get 'manage-room/:id/photos' => 'rooms#photos', as: 'manage_room_photos'
  resources :photos, only: [:create, :destroy] do
    collection do
      get :list
    end
  end
  root 'rooms#index'
end
