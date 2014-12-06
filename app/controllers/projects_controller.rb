class ProjectsController < ApplicationController
  def index
    @project = Project.new
    @projects = Project.all.page(params[:page]).per(5)
    @notecard = Notecard.new
  end

  def create
    @notecard = Notecard.new
    @project = current_user.projects.new(project_params)
    @projects = current_user.projects
    if @project.save
      redirect_to root_path
    else
      render :index
    end
  end

  def show
    @project = Project.find(params[:id])
    @notecard = Notecard.new
    @notecards = Notecard.all
  end

  private

  def project_params
    params.require(:project).permit(:title, :category, :completed)
  end
end
