class TopicsController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
  end

  def index
    @topics = Topic.where(user_id: params[:id])
  end

  def new
    @topic = Topic.new
    @topic.content = String.new

    @post = Post.new
    @post.topic = @topic
  end

  def create
    @topic = Topic.new(topic_params)
    @post = Post.new
    @post.title = @topic.title
    @post.user = @topic.user
    @post.content = @topic.content

    if @topic.save
      @post.topic_id = @topic.id
      if @post.save
        redirect_to topic_path(@topic)
      else
        @topic.destroy
        # failure
        render 'new'
      end
    else
      # failure
      render 'new'
    end
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :board_id, :user_id, :content)
    end
end
