class UsersController < ApplicationController
  # def index
  #   @users = policy_scope(User).all.order(created_at: :desc)
  # end

  def show
    @user = User.find(params[:id])
    @projects = Project.where(user: @user)
    @matches = Match.where(user: @user)
  end

   def tagged
      if params[:tag].present?
        @users = User.tagged_with(params[:tag])
      else
        @users = User.all
      end
   end

end
