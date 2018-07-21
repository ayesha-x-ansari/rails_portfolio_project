class RecipesController < ApplicationController
before_action  :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: "Successfully created new recipe"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_parems)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @recipe.destroy
    redirect_to root_path, notice: "Sucessfully deleted recipe."
  end


  private

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end
