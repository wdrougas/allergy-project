class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe.create(strong_recipes_params)
    redirect_to recipe_path(@recipe)
  end


  private

  def strong_recipes_params
    params.require(:recipe).permit(:name, :user_id, :user_attributes [:name])
  end

end
