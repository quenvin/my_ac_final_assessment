class NotesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    note = current_user.notes.new(note_params)
    note.save
    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end
end
