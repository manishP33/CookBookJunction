class RecipeBloggerController < ApplicationController

  def index
    @recipebloggers = RecipeBlogger.all

  end
end
