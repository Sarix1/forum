class AddLastPostDateToBoard < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :last_post_date, :datetime
  end
end
