class LikesController < ApplicationController
  def create
    Like.create(note_id: params[:id], user: current_user)
    like = Like.last
    UserMailer.note_like_email(like).deliver_later 
    @notes = Note.all.order("created_at DESC")
    @users = User.all.order("username ASC")
    if current_user
      @follows = Follow.where(follower_id: current_user.id)
    end
    render :toggle
  end



  def destroy
    like = Like.find_by(note_id:params[:id])
    UserMailer.note_unlike_email(like).deliver_later 
    like.destroy
    @notes = Note.all.order("created_at DESC")
    @users = User.all.order("username ASC")
    if current_user
      @follows = Follow.where(follower_id: current_user.id)
    end
    render :toggle
  end

  private

  def likes_params
    params.require(:like).permit(:note_id, :user_id)
  end
end
