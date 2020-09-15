class AddCategoryToBoards < ActiveRecord::Migration[6.0]
  def change
    add_reference :boards, :category, null: false, foreign_key: true
  end
end
