Rails.application.routes.draw do

  resources :ingredients, only: [:index, :show]
  resources :users, only: [:show, :destroy]
  resources :recipes, only: [:index, :new, :create, :show]
end
