# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

users = User.find_or_create_by!([
  { name: 'admin', email: 'admin@gmail.com' },
  { name: 'manager', email: 'manager@gmail.com' }
])

posts = Post.find_or_create_by!([
  {
    title: 'First Post',
    content: 'Content for first post',
    user: users[0],
    creator: users[0]
  },
  {
    title: 'Second Post',
    content: 'Content for second post',
    user: users[1],
    creator: users[1]
  }
])

EditorsPost.create!(post: posts[0], editor: users[1])
EditorsPost.create!(post: posts[0], editor: users[0])
EditorsPost.create!(post: posts[1], editor: users[0])

puts "Seeded #{User.count} users, #{Post.count} posts, and #{EditorsPost.count} editor relationships"
