Rails.application.routes.draw do
  resources :movie, only: [:index]
  root 'controller#index'
end
