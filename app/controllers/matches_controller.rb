class MatchesController < ApplicationController

before_action :set_match, only:[:show]
  def index
  	@matches = Match.all
  end

  def new
  	@match = Match.new
  end

  def show
      @first_team = Team.find(@match.team1_id)
      @first_team_captain = Player.find(@first_team.captain)
      @opponent_team = Team.find(@match.team2_id)
      @opponent_team_captain = Player.find(@opponent_team.captain)

      @live_scores = @match.live_scores.order(updated_at: :desc)
  end

  private
  def set_match
     @match = Match.find(params[:id])
  end

end
