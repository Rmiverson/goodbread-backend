class FolloweePostsSerializer < ActiveModel::Serializer
   attributes :id

   def initialize(arr)
      @arr = arr
   end

   def serialized_json
      options = {
         except: [:password_digest, :created_at, :updated_at]
       }
   
       @arr.to_json(options)
   end
end