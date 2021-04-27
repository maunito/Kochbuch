class RecipesController < ApplicationController
  def top
    @recipes = Recipe.where(rating: 5)
  end
  
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(strong_params)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def strong_params
    params.require(:recipe).permit(:name, :ingredients, :rating, :photo)
  end

end
