class Api::V1::CommentsController < ApplicationController
   def create
      comment = Comment.create(comment_params)
      
      if comment.valid?
         render json: CommentSerializer.new(comment).serialized_json
      else
         render json: {error: "Invalid inputs for new comment"}
      end
   end

   def show
      comment = Comment.find(params[:id])

      render json: CommentSerializer.new(comment).serialized_json
   end

   private

   def comment_params
      params.require(:comment).permit(:id, :user_id, :post_id, :content)
   end

end