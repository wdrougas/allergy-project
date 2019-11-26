class IngredientsController < ApplicationController
  def index
    # @ingredients = Ingredient.all sorted by the number of user that are allergic to it
    # @ingredients = Ingredient.order(:name)
    @ingredients = Ingredient.all


  end

  def show

  end
end
