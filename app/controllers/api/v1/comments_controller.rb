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

   def update
      comment = Comment.find(params[:id])

      comment.update(comment_params)

      render json: CommentSerializer.new(comment).serialized_json
   end

   def destroy
      comment = Comment.find(params[:id])
      comment.destroy
      render json: {}, status: 200
   end

   private

   def comment_params
      params.require(:comment).permit(:id, :user_id, :recipe_id, :content)
   end

end