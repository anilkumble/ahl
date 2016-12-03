class GoalsController < ApplicationController
  #before_action :authenticate
  before_action :set_match


  def index 
    @goals = @match.goals.all
  end

  def create
      @goal = @match.goals.new(goal_params)
      if @goal.save
          #when a goal is created, the goals count from the player record has to be incremented
          @player = @goal.player
          goal_count = @player.goals_count
          @player.update_attributes(goals_count: goal_count + 1)
          redirect_to match_goals_url(@match), notice: 'Goal was successfully created.'
      else
        redirect_to match_goals_url(@match), alert: "Goal wasn't created"
      end
  end


  def destroy
    @goal = @match.goals.find(params[:id])
    #when a goal is deleted, the goals count from the player record has to be decremented

    @player = @goal.player
    goal_count = @player.goals_count
    @goal.destroy

    @player.update_attributes(goals_count: goal_count - 1)
    redirect_to match_goals_url(@match), notice: 'Goal was successfully destroyed.'

  end

  private

    def set_match
        @match = Match.friendly.find(params[:match_id])
    end

    def authenticate
        authenticate_or_request_with_http_basic("Trespassers will be prosecuted") do |username, password|
           username == ENV['USERNAME'] and password == ENV['ADMIN_PASSWORD']
       end
    end

    def goal_params
      params.require(:goal).permit(:match_id, :player_id, :opponent_id)
    end
end
