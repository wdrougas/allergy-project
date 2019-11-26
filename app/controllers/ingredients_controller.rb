class IngredientsController < ApplicationController

  before_action :find_ingredient, only: [:show, :edit, :update, :destroy]
  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(strong_ingredient_params)
    redirect_to ingredients_path
  end

  def edit
  end

  def update
    @ingredient.update(strong_ingredient_params)
    redirect_to ingredients_path
  end

  def destroy
    @ingredient.delete
    redirect_to ingredients_path
  end

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  private

  def strong_ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
