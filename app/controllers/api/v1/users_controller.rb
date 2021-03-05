class Api::V1::UsersController < ApplicationController
   skip_before_action :authorized, only: [:create]  # :show :showFolloweePosts :showUserPosts

   # signup
   def create
      user = User.create(user_params)
      
      if user.valid?
         token = encode_token({user_id: user.id})
         render json: {user: user, token: token}
      else
         render json: {error: "Invalid username or password"}
      end
   end

   def index
      users = User.all

      render json: UserSerializer.new(users).serialized_json
   end

   def show
      user = User.find(params[:id])

      render json: UserSerializer.new(user).serialized_json
   end

   def showFolloweePosts
      user = User.find(params[:id])

      postsArr = User.getFolloweePosts(user)

      render json: PostSerializer.new(postsArr).serialized_json
   end

   def showUserPosts
      user = User.find(params[:id])

      postsArr = user.posts

      render json: PostSerializer.new(postsArr).serialized_json
   end

   def update
      user = User.find(params[:id])

      user.update(user_params)

      render json: UserSerializer.new(user).serialized_json
   end

   def destroy
      user = User.find(params[:id])
      user.destroy
      render json: {}, status: 200
   end

   private
   def user_params
      params.require(:user).permit(:id, :username, :user_desc, :password)
   end
end