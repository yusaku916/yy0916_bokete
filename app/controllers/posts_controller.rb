class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create
    Post.create(image: post_params[:image], theme: post_params[:theme], user_id: current_user.id)
  end

  def show

  end

  private
  def post_params
    params.permit(:image, :theme)
  end
end
