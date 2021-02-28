class Api::V1::PostsController < ApplicationController
   def index
      posts = Post.all

      render json: PostSerializer.new(posts).serialized_json
   end

   def show
      post = Post.find(params[:id])

      render json: PostSerializer.new(post).serialized_json
   end
end