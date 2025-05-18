class User < ApplicationRecord
  has_many :posts
  has_many :created_posts, foreign_key: "creator_id", class_name: "Post"
end
