class Board < ApplicationRecord
  belongs_to :category
  has_many :topics
  has_many :permissions
  has_many :moderators, class_name: 'User', through: :permissions, foreign_key: 'user_id'
end
