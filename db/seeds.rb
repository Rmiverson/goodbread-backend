# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Post.destroy_all
# Comment.destroy_all

u1 = User.create(username: "rmiverson", password_digest: "1234")
u2 = User.create(username: "lol", password_digest: "1234")

p1 = Post.create(user_id: 1)

l1 = PostLike.create(user_id: 2, post_id: 1)

f1 = Relationship.create(follower_id: 2, followed_id: 1)