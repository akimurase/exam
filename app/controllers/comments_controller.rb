class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = Comment.all
    # @comment_delete = Comment.find(params[:id])
    # @comment_edit = Comment.find(comment_params_edit)
  end

  def create
    Comment.create(comment_params)
    redirect_to action: :index
  end

  def show
  end

  def edit
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params_edit)
    redirect_to root_path
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:text)#.merge(user_id: current_user.id)
  end
  def comment_params_edit
    params.permit(:text)#.merge(user_id: current_user.id)
  end
end
