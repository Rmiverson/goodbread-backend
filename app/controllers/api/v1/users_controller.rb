class Api::V1::UsersController < ApplicationController
   skip_before_action :authorized, only: [:create, :show]  #:showFolloweePosts

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

      render json: FolloweePostsSerializer.new(postsArr).serialized_json
   end

   private
   def user_params
      params.require(:user).permit(:username, :password)
   end
end