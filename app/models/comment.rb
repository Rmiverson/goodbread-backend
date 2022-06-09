class Comment < ApplicationRecord
   belongs_to :user
   belongs_to :recipe

   has_many :comment_likes, :dependent => :delete_all
end
