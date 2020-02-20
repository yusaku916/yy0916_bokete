class PostsController < ApplicationController
  # before_action :user_signed_in?, only: [:new]
  before_action :authenticate_user!
  def index
  end

  def new
    # if user_signed_in?
    #   redirect_to new_user_session
    # end
  end

  def create
    Post.create(image: post_params[:image], theme: post_params[:theme], user_id: current_user.id)
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
  end

  private
  def post_params
    params.permit(:image, :theme)
  end
end
