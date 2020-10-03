module ApplicationHelper
  def all_topics
    @topic_count = 0
    Category.all.each do |cat|
      @topic_count += cat.topics.length
    end

    @topic_count
  end

  def all_posts
    @post_count = 0
    Category.all.each do |cat|
      @post_count += cat.posts.length
    end

    @post_count
  end

  def timestamp(t)
    t.strftime("%d %b %Y %H:%M")
  end
end
