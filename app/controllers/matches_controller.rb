class MatchesController < ApplicationController
  def create
    @match = Match.new
    @match.user = current_user
    @match.project = Project.find(params[:project_id])
  end
end
