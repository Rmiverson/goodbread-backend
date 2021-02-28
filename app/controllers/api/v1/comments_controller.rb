class Api::V1::CommentsController < ApplicationController
   def show
      comment = Comment.find(params[:id])

      render json: CommentSerializer.new(comment).serialized_json
   end
end