class Api::V1::PostsController < ApplicationController
   def create
      post = Post.create(post_params)
      
      if post.valid?
         render json: PostSerializer.new(post).serialized_json
      else
         render json: {error: "Invalid inputs for new post"}
      end
   end

   def index
      posts = Post.all

      render json: PostSerializer.new(posts).serialized_json
   end

   def show
      post = Post.find(params[:id])

      render json: PostSerializer.new(post).serialized_json
   end

   private
   
   def post_params
      params.require(:post).permit(:user_id, :title, :content)
   end

end