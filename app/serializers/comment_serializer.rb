class CommentSerializer < ActiveModel::Serializer
  attributes :id

  def initialize (comment)
    @comment = comment
  end

  def serialized_json
    options = {
      include: {
        user: {
          only: [:id, :username]
        },
        recipe: {
          only: [:id, :content]
        },
        comment_likes: {
          only: [:id, :user_id]
        }
      },
      except: [:created_at, :updated_at]
    }

    @comment.to_json(options)
  end
end
