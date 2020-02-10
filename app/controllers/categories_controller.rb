class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @articles = Article.where(:category_id => params[:id])
    # @articles = Article.find_by category_id: params[:id]
  end
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    @category.name = params['category']['name']
    @category.description = params['category']['description']
    if @category.save
      redirect_to categories_path
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.name = params['category']['name']
    @category.description = params['category']['description']
    if @category.save
      redirect_to categories_path
    end
  end
  
end