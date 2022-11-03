class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user
  end
end
