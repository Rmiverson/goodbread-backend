class Api::V1::PostLikesController < ApplicationController

   def create
      like = PostLike.create(post_like_params)
      
      if like.valid?
         render json: {message: "Invalid like request"}
      else
         render json: {message: "Like successful"}
      end
   end

   def destroy
      like = PostLike.find(params[:id])
      like.destroy
      render json: {}, status: 200
   end

   private

   def post_like_params
      params.require(:post_like).permit(:user_id, :post_id)
   end
   
end