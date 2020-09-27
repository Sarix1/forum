class Topic < ApplicationRecord
  attr_accessor :content
  belongs_to :user
  belongs_to :board
  has_many :posts
end
