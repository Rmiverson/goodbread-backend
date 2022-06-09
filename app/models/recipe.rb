class Recipe < ApplicationRecord
   has_many :comments, :dependent => :delete_all
   has_many :recipe_likes, :dependent => :delete_all

   belongs_to :user
end
