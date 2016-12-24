Rails.application.routes.draw do
  devise_for :users
  resources :rooms, only: [:index, :show] do
    collection do
      get :search
    end
  end
  root 'rooms#index'
end
