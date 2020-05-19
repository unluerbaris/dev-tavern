class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @projects = Project.last(10).reverse!
  end

  def tagged
    if params[:tag].present?
      @restaurants = Project.tagged_with(params[:tag])
    else
      @restaurants = Project.all
    end
  end
end
