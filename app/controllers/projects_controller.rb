class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def tagged
  if params[:tag].present?
    @projects = Project.tagged_with(params[:tag])
  else
    @projects = Project.all
  end
end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, tag_list: [])
  end
end
