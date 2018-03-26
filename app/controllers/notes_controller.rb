class NotesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end
end
