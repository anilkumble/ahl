class StaticPagesController < ApplicationController
  def home
      @reports = Report.order(created_at: :desc)
      @teams = Team.order(points: :desc)
      @current_match = Match.where(result: -2).first
      @live_score = @current_match.live_scores.last

      @top_scorers = Player.order("goals_count desc").limit(4)
  end

  def about
  end
end
