class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.where(user_id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      # failure
      render 'new'
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :topic_id, :user_id)
    end
end
