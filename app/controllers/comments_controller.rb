class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = Comment.all
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
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:text)#.merge(user_id: current_user.id)
  end
end
