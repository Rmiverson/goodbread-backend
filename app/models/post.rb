class Post < ApplicationRecord
   has_many :comments
   has_many :post_likes

   belongs_to :user, dependent: :destroy
end
