class Api::V1::CommentLikesController < ApplicationController
   
   def create
      like = CommentLike.create(comment_like_params)
      
      if like.valid?
         render json: {message: "Invalid like request"}
      else
         render json: {message: "Like successful"}
      end
   end

   def destroy
      like = CommentLike.find(params[:id])
      like.destroy
      render json: {}, status: 200
   end

   private

   def comment_like_params
      params.require(:comment_like).permit(:user_id, :comment_id)
   end
   
end