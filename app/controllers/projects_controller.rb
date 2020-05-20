class ProjectsController < ApplicationController
skip_before_action :authenticate_user!, only: :index
  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = policy_scope(Project).all.order(created_at: :desc)
  end

  def new
    @project = Project.new
    authorize @project
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
    authorize @project
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :photo, tag_list: [])
  end
end
