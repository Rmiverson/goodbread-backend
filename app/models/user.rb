class User < ApplicationRecord
   has_secure_password

   has_many :posts, :dependent => :delete_all
   has_many :comments, :dependent => :delete_all
   has_many :post_likes, :dependent => :delete_all
   has_many :comment_likes, :dependent => :delete_all

   # has_many :posts, through: :post_likes
   # has_many :comments, through: :comment_likes

   has_many :followed_users, foreign_key: :follower_id, class_name: "Relationship"
   has_many :followees, through: :followed_users, :dependent => :delete_all

   has_many :following_users, foreign_key: :followee_id, class_name: "Relationship"
   has_many :followers, through: :following_users, :dependent => :delete_all


   def self.getFolloweePosts(user)
      postsArr = []
      user.followees.each do |followee|
         followee.posts.each do |post|
            postsArr << post
         end
      end
      return postsArr
   end
end
