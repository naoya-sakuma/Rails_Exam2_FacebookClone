Rails.application.routes.draw do
  resources :feeds
  resources :sessions, only: [:new, :create, :destroy]
  resources :albums, only: [:new, :create, :show]
end
