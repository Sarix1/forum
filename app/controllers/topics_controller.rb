class TopicsController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
  end

  def index
    @topics = Topic.where(user_id: params[:id])
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to topic_path(@topic)
    else
      # failure
      render 'new'
    end
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :board_id, :user_id)
    end
end
