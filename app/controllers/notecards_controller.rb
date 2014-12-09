class NotecardsController < ApplicationController
  def new
    @notecard = Notecard.new
    @project = load_project_from_url
  end

  def create
    @project = load_project_from_url
    notecard = @project.notecards.new(notecard_params)
    if notecard.save
      redirect_to project_path(@project)
    else
      redirect_to root_path
    end
  end

  def edit
    @project = load_project_from_url
    @notecard = Notecard.find(params[:id])
  end

  def update
    @project = load_project_from_url
    @notecard = @project.notecards.find(params[:id])
    @notecard.update(notecard_params)
    redirect_to project_path(@project)
  end

  private

  def notecard_params
    params.require(:notecard).permit(:body).
      merge(project_id: @project.id)
  end

  def load_project_from_url
    Project.find(params[:project_id])
  end
end
