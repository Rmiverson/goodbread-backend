class PostLike < ApplicationRecord
   belongs_to :post, dependent: :destroy
   belongs_to :user, dependent: :destroy
end
