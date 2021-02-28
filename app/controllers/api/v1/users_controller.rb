class Api::V1::UsersController < ApplicationController
   skip_before_action :authorized, only: [:create]

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

   private
   def user_params
      params.require(:user).permit(:username, :password)
      # params.permit(:user)
   end
end