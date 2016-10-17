class RecipesController < ApplicationController
    # before_action :authenticate_user!, only: [:add_cookbook, :remove_cookbook]

    def index
      @recipes = Recipe.all
    end

    def new
      @blogger = Blogger.find(params[:blogger_id])
      @recipe = @blogger.recipes.new
    end

    def create
      @blogger = Blogger.find(params[:blogger_id])
      @recipe = @blogger.recipes.create(recipe_params)
      redirect_to @recipe
    end

    def show
      @recipe = Recipe.find(params[:id])
    end

    def edit
      @blogger = Blogger.find(params[:blogger_id])
      @recipe = Recipe.find(params[:id])
    end

    def update
      @recipe = Recipe.find(params[:id])
      @recipe.update(recipe_params)
      redirect_to @recipe
    end

    def destroy
      @recipe = Recipe.find(params[:id])
      @recipe.destroy
      redirect_to recipes_path
    end

    def add_cookbook
      @recipe = Recipe.find(params[:id])
      @recipe.cookbooks.create(user: current_user)
      redirect_to :back
    end

    def remove_cookbook
      Cookbook.where(user: current_user).destroy_all
      redirect_to :back
    end

    private
    def recipe_params
      params.require(:recipe).permit(:name, :img_url, :recipe, :blogger_id)
    end
  end
