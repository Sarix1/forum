class AddLastPostDateToTopic < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :last_post_date, :datetime
  end
end
