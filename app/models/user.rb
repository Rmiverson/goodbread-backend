class User < ApplicationRecord
   has_many :posts
   has_many :comments
   has_many :post_likes
   has_many :comment_likes

   # has_many :posts, through: :post_likes
   # has_many :comments, through: :comment_likes

   has_many :followed_users, foreign_key: :follower_id, class_name: "Relationship"
   has_many :followees, through: :followed_users

   has_many :following_users, foreign_key: :followee_id, class_name: "Relationship"
   has_many :followers, through: :following_users
end
