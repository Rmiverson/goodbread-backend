class User < ApplicationRecord
   has_many :posts
   has_many :comments
   has_many :post_likes
   has_many :comment_likes

   has_many :posts, through: :post_likes
   has_many :comments, through: :comment_likes

   has_many :followers, foreign_key: :follower_id, class_name: "Relationship"
   has_many :followed, through: :followers

   has_many :followed, foreign_key: :followed_id, class_name: "Relationship"
   has_many :follwers, through: :followed
end
