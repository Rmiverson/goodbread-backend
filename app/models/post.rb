class Post < ApplicationRecord
   has_many :comments, :dependent => :delete_all
   has_many :post_likes, :dependent => :delete_all

   belongs_to :user
end
