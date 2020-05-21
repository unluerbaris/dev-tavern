class UsersController < ApplicationController
skip_before_action :authenticate_user!, only: :index

  def index
    @users = policy_scope(User).all.order(created_at: :desc)
  end

  def show
    if User.find_by_username(params[:id])
      @user = User.find_by_username(params[:id])
    else
      redirect_to root_path, :notice=> "User not found!"
    end
    @projects = Project.where(user: @user)
    @matches = Match.where(user: @user)
  end

end
