class LiveScoresController < ApplicationController
  before_action :authenticate
  before_action :set_match, except: [:broadcast]

  # GET /commentaries
  # GET /commentaries.json
   def index
      @live_scores = @match.live_scores.order(created_at: :desc)
      @commentary = @match.live_scores.new
  end

  # GET /commentaries/1 
  # GET /commentaries/1.json
  def show
  end

  # GET /commentaries/new
  def new
    @commentary = LiveScore.new
  end

  # GET /commentaries/1/edit
  def edit
    @commentary = @match.live_scores.find_by_id(14)
  end

  # POST /commentaries
  # POST /commentaries.json
  
  def create

    # render text :params and return 
    @commentary = @match.live_scores.new(live_score_params)
    
    if @commentary.teamone_goals == nil 
      @last_record = LiveScore.last
      @commentary.teamone_goals = @last_record.teamone_goals
      @commentary.teamtwo_goals = @last_record.teamtwo_goals
    end

    @commentary.save

    respond_to do |format|
      format.js
    end
  end

  # PATCH/PUT /commentaries/1
  # PATCH/PUT /commentaries/1.json
  def update
    if @commentary.update(live_score_params)
      respond_to do |format|
        format.js
      end
    end
  end

  # DELETE /commentaries/1
  # DELETE /commentaries/1.json
  def destroy

      @live_score = @match.live_scores.find(params[:id])
      @live_score.destroy
      
      respond_to do |format|
        format.js
      end
  end

  def dynamic_commentary

    @commentaries = @match.live_scores.last(5)
    require 'json'
    @commentaries_json = @commentaries.to_json
    
  end

  private
    def set_match

        @match = Match.where(running: 1).last
        
    end

    def live_score_params
      params.require(:live_score).permit(:teamone_goals, :teamtwo_goals, :commentary)
    end

    def authenticate
        authenticate_or_request_with_http_basic("Trespassers will be prosecuted") do |username, password|
            username == ENV['USERNAME'] and password == ENV['ADMIN_PASSWORD']
       end
    end
end
