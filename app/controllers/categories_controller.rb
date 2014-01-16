class CategoriesController < ApplicationController
  def index
  	@categories = Category.order('name ASC')
  end

  def show
  	@category = Category.find(params[:id])
  end
end
