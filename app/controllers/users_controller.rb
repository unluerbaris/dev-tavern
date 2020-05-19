class UsersController < ApplicationController
  def show
    if User.find_by_username(params[:id])
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not found!"
    end
    @projects = Project.where("user_id = ?" , User.find_by_username(params[:id]).id)
    @newProject = Project.new
  end
end
