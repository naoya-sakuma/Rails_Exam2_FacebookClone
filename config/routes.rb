Rails.application.routes.draw do
  resources :albums, only: [:new, :create]
end
