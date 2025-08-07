# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create a user
user = User.create!(username: "alice", email: "alice@example.com")

# Create a post
post = user.posts.create!(title: "First Post", url: "https://example.com", body: "Check this out!")

# Add a top-level comment to the post
comment = post.comments.create!(user: user, body: "Looks cool!")

# Add a reply to the comment
reply = comment.replies.create!(user: user, post: post, body: "Thanks!")
