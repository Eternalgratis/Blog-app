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
    @post = current_user.posts.new(post_params[:id])
    respond_to do |format|
      format.html do
        if @post.save
          redirect_to user_post_path(current_user, @post), notice: 'Post was successfully created.'
          # redirect_to '/users/#{@post_new.user_id}/posts', messaage: 'Post was successfully created.'
        else
          render :new, status: 'Error: Post was not created.'
        end
      end
    end
  end
end
