Rails.application.routes.draw do
  resources :feeds do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :albums, only: [:new, :create, :show]
  root to: "sessions#new"
end
