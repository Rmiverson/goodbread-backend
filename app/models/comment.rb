class Comment < ApplicationRecord
   belongs_to :user, :dependent :destroy
   belongs_to :post, :dependent :destroy

   has_many :comment_likes
end
