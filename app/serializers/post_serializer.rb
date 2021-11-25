class PostSerializer < ActiveModel::Serializer
  attributes :id

  def initialize (post)
    @post = post
  end

  def serialized_json
    options = {
      include: {
        user: {
          only: [:id, :username]
        },
        comments: {
          only: [:id, :user_id, :content]
        },
        post_likes: {
          only: [:id, :user_id]
        }
      },
      except: [:created_at, :updated_at]
    }
    
    @post.to_json(options)
  end
end
