class MatchesController < ApplicationController
  def index
    @matches = current_dotauser.matches.order('started_at DESC') if current_dotauser
  end
  def show
    @match = Match.find_by(id: params[:id])
  end
end
