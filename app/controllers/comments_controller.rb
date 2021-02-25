class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = Comment.all
    @admin = Admin.all
    # binding.pry
  end

  def create
    Comment.create(comment_params)
    redirect_to action: :index
  end

  def show
    @comment = Comment.find(params[:id])
    @replies = Reply.where(comment_id:params[:id])
  end

  def edit
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params_edit)
    redirect_to action: :index
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id)
  end
  def comment_params_edit
    params.permit(:text).merge(user_id: current_user.id)
  end
end
