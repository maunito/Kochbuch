class PagesController < ApplicationController
  def home
    @recipes = Recipe.first(8)
  end

  def impressum
  end
end
