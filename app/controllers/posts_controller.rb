class PostsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def update
    post = Post.find_by(id: params[:id])
    post.update(post_params)
    redirect_to post_path
  end

  def create
    post = current_admin.posts.create(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
