Rails.application.routes.draw do

  resources :ingredients, only: [:index, :show]
  resources :users, only: [:show]
  resources :recipes, only: [:index, :new, :create]
end
