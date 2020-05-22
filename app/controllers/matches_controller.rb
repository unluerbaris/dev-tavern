class MatchesController < ApplicationController

  def create
    @match = Match.new(match_params)
    @match.user = current_user
    authorize @match
    if @match.save
      redirect_to user_path(current_user)
    else
      @project = @match.project
      render 'projects/show'
    end
  end

  def update
    @match = Match.find(params[:id])
    @match.update(match_params)
    authorize @match
    if @match.save
      redirect_to user_path(current_user)
    else
      @project = @match.project
      render 'users/show'
    end
  end

private

  def match_params
    params.require(:match).permit(:project_id, :role, :status)
  end

end
