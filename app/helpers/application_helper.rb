module ApplicationHelper
  def all_topics
    @topic_count = 0
    Category.all.each do |cat|
      cat.boards.each do |board|
        @topic_count =+ board.topics.length
      end
    end

    @topic_count
  end

  def all_posts
    @post_count = 0
    Category.all.each do |cat|
      cat.boards.each do |board|
        @post_count =+ cat.posts.length
      end
    end

    @post_count
  end
end
