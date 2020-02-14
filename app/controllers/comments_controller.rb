class CommentsController < ApplicationController
  def show
    @comment1 = Comment.new
    # @comment.article_id = params[:id]
  end

  def create
    # binding.pry
    @comment = Comment.new
    @comment.title = params['comment']['title']
    @comment.body = params['comment']['body']
    @comment.article_id = params[:id]
    @comment.user_id = current_user.id
    if @comment.save
      #notice = "Your comment added successfully"
      flash.notice = "Your comment has been added"
      redirect_to article_path(params[:id])
    end
  end

  def edit
    # binding.pry
    @comment1 = Comment.find(params[:id])
    # binding.pry
  end

  def delete
    
  end

end