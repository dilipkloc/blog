class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params['article']['title']
    @article.body = params['article']['body']
    @article.category_id = params['article']['category_id']
    @article.publish_date = params['article']['publish_date']
    @article.feature_image_url = params['article']['feature_image_url'].path
    binding.pry
    if @article.publish_date <= Date.today
      @article.is_published = true
    elsif @article.publish_date > Date.today
      @article.is_published = false
    end
    if @article.save
      redirect_to articles_path
    else
      redirect_to article_new_path
    end
  end
end