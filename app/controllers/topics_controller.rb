class TopicsController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
  end

  def index
    @topics = Topic.where(user_id: params[:id])
  end

  def new
    @topic = Topic.new
    @first_post = Post.new
    @first_post.topic = @topic
  end

  def create
    @topic = Topic.new(topic_params)
    @first_post = Post.new
    @first_post.title = @topic.title
    @first_post.user = @topic.user
    @first_post.content = params[:first_post][:content]

    if @topic.save
      @first_post.topic_id = @topic.id
      if @first_post.save
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
      params.require(:topic).permit! #(:title, :board_id, :user_id, :first_post)
    end
end
