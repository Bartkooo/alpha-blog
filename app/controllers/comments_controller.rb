class CommentsController < ApplicationController
  before_action :require_user

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.user = current_user

    @comment.save

    redirect_to article_path(@comment.article)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end

end
