Rails.application.routes.draw do
  resources :movies, only: [:index]
  root 'movies#index'
  post '/', to: 'movies#search'
end
