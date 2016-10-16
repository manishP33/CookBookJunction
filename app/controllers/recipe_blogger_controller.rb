class RecipebloggersController < ApplicationController

  def index
    @recipebloggers = RecipeBlogger.all

  end
end
