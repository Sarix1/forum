class Category < ApplicationRecord
  has_many :boards
  has_many :topics, through: :boards
  has_many :posts, through: :topics
end
