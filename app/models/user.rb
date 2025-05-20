class User < ApplicationRecord
  has_many :posts
  has_many :created_posts, foreign_key: "creator_id", class_name: "Post"
  has_many :editors_posts
  has_many :edited_posts, through: :editors_posts, source: :post
end
