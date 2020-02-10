class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    @category.name = params['category']['name']
    @category.description = params['category']['description']
    binding.pry
    if @category.save
      redirect_to categories_path
    end
  end
end