class Api::V1::RelationshipsController < ApplicationController
   def create
      relationship = Relationship.create(relationshipParams)

      if !relationship.valid?
         render json: {message: "Invalid follow request"}
      else
         render json: {message: "Follow request successful"}
      end
   end

   def destroy
      render json: Relationship.find_by(relationshipParams).destroy
   end

   private

   def relationshipParams
      params.require(:relationship).permit(:follower_id, :followee_id)
   end
end