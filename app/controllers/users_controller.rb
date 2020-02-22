class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @users_theme = Post.where(user_id: @user.id).order(id: :desc).limit(3)
    @users_answer = Answer.where(user_id: @user.id).order(id: :desc).limit(3)
  end
end
