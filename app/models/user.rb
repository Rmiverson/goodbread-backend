class User < ApplicationRecord
   has_many :posts
   has_many :comments
   has_many :post_likes
   has_many :comment_likes

   has_many :followings, foreign_key: "follower_id", dependent: :destroy
   has_many :followed_users, through: :followings, source: :followed

   has_many :posts, through: :post_likes
   has_many :comments, through: :comment_likes

   # belongs_to :associated_object, polymorphic: true
end
