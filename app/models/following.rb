class Following < ApplicationRecord
   has_many :users

   belongs_to :user
end
