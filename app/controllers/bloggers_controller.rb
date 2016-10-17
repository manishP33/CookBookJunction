class BloggersController < ApplicationController

  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
    @bloggers = Blogger.all
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.create(blogger_params)
    redirect_to blogger_path(@blogger)
  end

   def show
    @blogger = Blogger.find(params[:id])
  end

  def edit
    @blogger = Blogger.find(params[:id])
  end

  def update
    @blogger = Blogger.find(params[:id])
    @blogger.update(blogger_params)
    redirect_to blogger_path(@blogger)
  end

  def destroy
    @blogger = Blogger.find(params[:id])
    @blogger.destroy
    redirect_to bloggers_path
  end

  private
  def blogger_params
    params.require(:blogger).permit(:name, :img_url, :location)
  end
end
