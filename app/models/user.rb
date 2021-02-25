class User < ApplicationRecord
   has_many :posts
   has_many :comments
   has_many :post_likes
   has_many :comment_likes
   has_many :followings, as :associated_object

   has_many :posts, through: :post_likes
   has_many :comments, through: :comment_likes

   belongs_to :associated_object, polymorphic: true
end
