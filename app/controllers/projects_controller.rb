class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    if project.save
      redirect_to root_path
    else
      render root_path
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).
      permit(:title, :user_id).
      merge(user_id: current_user.id)
  end
end