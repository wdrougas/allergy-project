Rails.application.routes.draw do
  get 'ingredients/index'
  get 'ingredients/show'
  get 'recipes/index'
  get 'recipes/new'
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
