class UserSerializer < ActiveModel::Serializer
  attributes :id

  def initialize(user)
    @user = user
  end

  def serialized_json
    options = {
      include: {
        posts: {
          only: [:id, :title, :content]
        },
        comments: {
          only: [:id, :content]
        },
        followees: {
          only: [:id, :username]
        },
        followers: {
          only: [:id, :username]
        }
      },
      except: [:created_at, :updated_at]
    }

    @user.to_json(options)
  end
end
