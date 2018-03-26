class FollowsController < ApplicationController
      def create
        note = Note.find(params[:id])
        Follow.create(following_id: note.user.id, follower: current_user)
        @notes = Note.all.order("created_at DESC")
        render :toggle    
      end
    
      def destroy
        note = Note.find(params[:id])
        follow = Follow.find_by(following_id: note.user.id, follower: current_user)
        follow.destroy
        @notes = Note.all.order("created_at DESC")
        render :toggle
      end
end
