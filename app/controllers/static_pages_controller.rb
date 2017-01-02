  class StaticPagesController < ApplicationController
  before_action :set_match, only: [:admin, :home]
  before_action :authenticate, only: [:admin]
  def home
      @reports = Report.order(created_at: :desc).limit(4)
      @photos = Photo.order(created_at: :desc).limit(5) 
      @teams = Team.order(points: :desc)

      if @running_match
        @live_score = @current_match.live_scores.last # running_match == current_match.
      end
      @top_scorers = Player.order("goals_count desc").limit(3)
      @matches_ended = Match.where.not(result: -2).count

      #static content
      @previous_top_scorers = Player.all.sample(3)

       
  end

  def about
  end
  
  def admin

    if @running_match != nil

      #For Printing all LiveScore   
      @commentaries = @running_match.live_scores.all.order(created_at: :desc)

      #For New Goals
      @goals = @running_match.goals.all
      
      #For LiveScore
      @commentary = @running_match.live_scores.new  
     
    end


    #For New Player
    @player = Player.new

    #For all_matches
    @matches = Match.all

    #For all_matches
    @players = Player.all

  end

  private
    def set_match
        @current_match = Match.where(result: -2).first
        @running_match = Match.where(running: 1).last
        
    end

    def authenticate
      authenticate_or_request_with_http_basic("Trespassers will be prosecuted") do |username, password|
        username == ENV['USERNAME'] and password == ENV['ADMIN_PASSWORD']
      end
    end

end
