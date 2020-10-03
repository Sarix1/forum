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
      @post.topic.last_post_date = @post.created_at
      @post.topic.save

      redirect_to topic_path(@post.topic)
    else
      # failure
      # known issue - doesn't keep old params!
      redirect_to new_post_path, topic: params[:topic]
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :topic_id, :user_id)
    end
end
