class RepliesController < ApplicationController
  def new
    @comment = Comment.find(params[:comment_id])
    @reply = Reply.new
    @replies = Reply.where(comment_id: params[:comment_id])
  end

  def create
    Reply.create!(reply_params)
    redirect_to action: :new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def reply_params
    params.permit(:text, :comment_id).merge(user_id: current_user.id)

  end
end
