require_relative '../../config/initializers/info'
class MatchesController < ApplicationController

before_action :set_match, only:[:show,:end_match,:end]
before_action :authenticate, only:[:create, :update, :delete, :end, :end_delete]

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



  def end
  end

  def end_match
     #redirect_to root_url
     @team1 = @match.first_team
     @team2 = @match.opponent_team
     team1_points = @team1.points
     team2_points = @team2.points

     #successful update
     if @match.update(result: match_params[:result],man_of_the_match: match_params[:man_of_the_match])
         ## 1 refers to first team's win, -1 refers to first team's loss , 0 refers to draw

         if @match.result == 1
             @team1.update(points: team1_points + 3)
         elsif @match.result == -1
             @team2.update(points: team2_points + 3)
         elsif @match.result == 0
            @team1.update(points: team1_points + 1)
            @team2.update(points: team2_points + 1)
         end
         redirect_to new_match_url, notice: "Match details were updated"

    else
        render 'end'
    end

  end


  private
  def set_match
     @match = Match.find(params[:id])
  end

  def authenticate
     authenticate_or_request_with_http_basic("Trespassers will be prosecuted") do |username, password|
        username == "admin" and password="secreT"
    end
  end

  def match_params
      params.require(:match).permit(:team1_id, :team2_id,:date,:result,:man_of_the_match)

  end

end
