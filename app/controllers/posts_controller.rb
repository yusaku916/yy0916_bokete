class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all.page(params[:page]).order(id: :desc).per(5)
    # @answers = Answer.where(post_id: @posts)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(image: post_params[:image], theme: post_params[:theme], user_id: current_user.id)
    if !(@post.save)
      redirect_to posts_new_path
    else
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @answers = Answer.where(post_id: @post.id).order(id: :desc)
    @answer = Answer.new
  end

  private
  def post_params
    params.require(:post).permit(:image, :theme)
  end

end
