class ReplysController < ApplicationController
  def new
    @comments = Comment.all
    @reply = Comment.new
  end

  def create
    binding.pry
    Reply.create(reply_params)
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
    params.require(:reply).permit(:text).merge(user_id: current_user.id)

  end
end
