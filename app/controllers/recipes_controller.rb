class RecipesController < ApplicationController

  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
     @recipes_list = Recipe.all
    if params[:search]
      @recipes  = Recipe.find_by(name: params[:search])
    else
      @recipes = Recipe.all
    end
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(strong_recipes_params)
    redirect_to recipes_path
  end

  def edit
  end

  def update
    @recipe.update(strong_recipes_params)
    redirect_to recipes_path
  end

  def destroy
    @recipe.delete
    redirect_to recipes_path
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end


  private

  def strong_recipes_params
    # params.require(:recipe).permit(:name, :user_id, :user_attributes [:name])
    params.require(:recipe).permit(:name, :user_id)
  end

end
