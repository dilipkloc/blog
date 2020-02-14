class PostcommentsController < ApplicationController
  def show
    @postcomments = Postcomment.new
    # @postcomments.article_id = params[:id]
  end

  def create
    # binding.pry
    @postcomments = Postcomment.new
    @postcomments.title = params['postcomments']['title']
    @postcomments.body = params['postcomments']['body']
    @postcomments.article_id = params[:id]
    @postcomments.user_id = current_user.id
    if @postcomments.save
      #notice = "Your postcomments added successfully"
      flash.notice = "Your postcomments has been added"
      redirect_to article_path(params[:id])
    end
  end

  def edit
    #binding.pry
    @postcomments = params[:id]
  end

  def destroy
    @postcomments = Postcomment.find(params[:id])
    if @postcomments.destroy
      # redirect_to 
    end
  end

  def update
  end

end