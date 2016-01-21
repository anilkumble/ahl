class MatchesController < ApplicationController

before_action :set_match, only:[:show, :end_match, :end, :edit, :update, :destroy]
before_action :authenticate, except:[:index,:show]

  def index
  	@matches = Match.all
    @ended_matches = Match.where.not(result: -2)
    @new_matches = Match.where(result: -2)
  end

  def new
  	@match = Match.new
  end

  # for admin

  def list
      @matches = Match.all
  end

  def show

      @first_team = Team.find(@match.team1_id)
      @first_team_captain = Player.find(@first_team.captain)

      @opponent_team = Team.find(@match.team2_id)
      @opponent_team_captain = Player.find(@opponent_team.captain)

      @live_scores = @match.live_scores.order(updated_at: :desc)

      #Figure out how to write a try except block
      if @match.result != -2 and @match.man_of_the_match
          @man_of_the_match = Player.find(@match.man_of_the_match)
      else
          @man_of_the_match = nil
      end

      @final_score = @match.live_scores.last
      if @match.result != -2 and @match.trump_card
          @budding_player = Player.find(@match.trump_card)
     else
         @budding_player = nil
      end

      respond_to do |format|
        format.html
        format.js
        format.json
      end

  end

  def edit
  end

  def end
  end

  def end_match

     @team1 = @match.first_team
     @team2 = @match.opponent_team
     team1_points = @team1.points
     team2_points = @team2.points

     result_updated = @match.result

     # Only update if the result hasn't been updated yet
     if result_updated == -2
         if @match.update(result: match_params[:result],man_of_the_match: match_params[:man_of_the_match], trump_card: match_params[:trump_card])
             ## 1 refers to first team's win, -1 refers to first team's loss , 0 refers to draw

             if @match.result == 1
                 @team1.update(points: team1_points + 3)
             elsif @match.result == -1
                 @team2.update(points: team2_points + 3)
             elsif @match.result == 0
                @team1.update(points: team1_points + 1)
                @team2.update(points: team2_points + 1)
             end
             redirect_to all_matches_url, notice: "Match details were updated"

         else
            render 'end'
         end

        #If someone is trying to update the result for the second time, should not allow it
        # else, team's points would go out of order
    else
        redirect_to all_matches_url, alert: "You have already updated the result!"
    end
  end

  def create
      @match = Match.new(match_params)

      if @match.save
          redirect_to all_matches_url, notice: "Match was created successfully"
      else
          render 'new'
      end
  end

  def update
      if @match.update(match_params)
          redirect_to all_matches_url, notice: "Match details were updated successfully"
      else
          render 'edit'
      end
  end

  def destroy
      @match.destroy
      redirect_to all_matches_url, notice: "Match was deleted successfully"
  end

  private
  def set_match
     @match = Match.friendly.find(params[:id])
  end

  def authenticate
     authenticate_or_request_with_http_basic("Trespassers will be prosecuted") do |username, password|
        username == ENV['USERNAME'] and password == ENV['ADMIN_PASSWORD']
    end

  end

  def match_params
      params.require(:match).permit(:team1_id, :team2_id,:time, :result, :man_of_the_match, :trump_card, :running)
  end

end
