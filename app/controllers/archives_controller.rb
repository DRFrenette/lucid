class ArchivesController < ApplicationController
  def index
    @notecards = current_user.notecards.order("created_at DESC")
  end

  def download
    notecard = Notecard.find(params[:id])
    body = notecard.body
    send_data body, filename: "Notecard from #{post.date}"
  end
end
