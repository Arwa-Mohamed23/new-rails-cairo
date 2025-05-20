class Post < ApplicationRecord
  belongs_to :user
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :editors_posts
  has_many :editors, through: :editors_posts
end
