class StaticPagesController < ApplicationController
  def home
      @reports = Report.order(created_at: :desc)
      @teams = Team.order(points: :desc)
      @current_match = Match.where(result: -1).first
      @liveScore = @current_match.live_scores.last
  end

  def about
  end
end
