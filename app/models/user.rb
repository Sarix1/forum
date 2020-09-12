class User < ApplicationRecord
  has_many :topics
  has_many :posts
  has_many :permissions
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'recipient_id'
end
