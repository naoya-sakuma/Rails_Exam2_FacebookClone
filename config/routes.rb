Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :albums, only: [:new, :create, :show]
end
