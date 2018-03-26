class LikesController < ApplicationController
  def create
    Like.create(note_id: params[:id], user: current_user)
    @notes = Note.all.order("created_at DESC")
    render :toggle
  end



  def destroy
    like = Like.find_by(note_id:params[:id])
    like.destroy
    @notes = Note.all.order("created_at DESC")
    render :toggle
  end

  private

  def likes_params
    params.require(:like).permit(:note_id, :user_id)
  end
end
