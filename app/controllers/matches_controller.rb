class MatchesController < ApplicationController
  def index
    @matches = current_dotauser.matches.order('started_at DESC') if current_dotauser
  end

  def show
    @match = Match.includes(:players).find_by(id: params[:id])
    @players = @match.players.order('slot ASC').group_by(&:radiant)
  end
end