class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :tagged]

  def home
    @projects = Project.last(6).reverse!
  end

  def tagged
    if params[:tag].present?
      @projects = Project.tagged_with(params[:tag])
    else
      @projects = Project.all
    end
  end
end
