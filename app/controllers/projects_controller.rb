class ProjectsController < ApplicationController
  def index
    @project = Project.new
    @projects = Project.all
  end

  def create
    @project = current_user.projects.new(project_params)
    @projects = current_user.projects
    if @project.save
      redirect_to @project
    else
      render :index
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:title, :category, :completed)
  end
end
