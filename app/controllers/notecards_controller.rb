class NotecardsController < ApplicationController
  def new
    @notecard = Notecard.new
    @project = Project.find(params[:project_id])
  end

  def index
    @notecard = Notecard.new
    @notecards = Notecards.all.page(params[:page]).per(5)
  end

  def create
    @project = Project.find(params[:project_id])
    @notecard = Notecard.new(notecard_params)
    @notecards = Notecard.all
    if @notecard.save
      redirect_to project_path(@project)
    else
      redirect_to root_path
    end
  end

  def edit
  end

  private

  def notecard_params
    params.require(:notecard).permit(:body, :project_id).
      merge(project_id: @project.id)
  end
end
