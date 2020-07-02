class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end
  
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:success] = "comment successfully created"
      redirect_to @comment.post
    else
      flash[:errors] = @comment.errors.full_messages
      render :new
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
