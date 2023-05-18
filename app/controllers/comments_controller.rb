class CommentsController < ApplicationController
  before_action :require_user
  before_action :set_comment, only: [:destroy]
  before_action :require_appropriate_user, only: [:destroy]

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.user = current_user

    @comment.save

    redirect_to article_path(@comment.article)
  end

  def destroy
    @comment.destroy

    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end

  def set_comment
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

  def require_appropriate_user
    if current_user.id != @comment.user_id && !current_user.admin?
      flash[:alert] = "You must be creator of that comment to handle that operation"
      redirect_to @article
    end
  end

end
