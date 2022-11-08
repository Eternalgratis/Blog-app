class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @post = Post.includes([:author]).where(author_id: params[:author_id])
    # @post = Post.all
  end

  def show
    # @post = Post.includes([:author]).find(params[:id])
    @post = Post.find(params[:id])
    @comments = @post.comments.includes([:author])
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
        else
          render :new, status: 'Error: Post was not created.'
        end
      end
    end
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
