class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.build(comment_params)
    @comment.save
    redirect_to blog_path(@comment.blog)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :blog_id)
  end
end
