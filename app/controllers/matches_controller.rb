class MatchesController < ApplicationController

  def create
    @match = Match.new(match_params)
    @match.user = current_user
    authorize @match
    if @match.save
      redirect_to project_path(@match.project)
    else
      @project = @match.project
      render 'projects/show'
    end
  end

private

  def match_params
    params.require(:match).permit(:project_id)
  end
end
