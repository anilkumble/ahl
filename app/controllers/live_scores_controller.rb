class LiveScoresController < ApplicationController
  before_action :set_live_score, only: [:show, :edit, :update, :destroy]

  # GET /live_scores
  # GET /live_scores.json
  def index
    @live_scores = LiveScore.all
  end

  # GET /live_scores/1
  # GET /live_scores/1.json
  def show
  end

  # GET /live_scores/new
  def new
    @live_score = LiveScore.new
  end

  # GET /live_scores/1/edit
  def edit
  end

  # POST /live_scores
  # POST /live_scores.json
  def create
    @live_score = LiveScore.new(live_score_params)

    respond_to do |format|
      if @live_score.save
        format.html { render :new, notice: 'Live score was successfully created.' }
        format.json { render json: @live_score}
        format.js {render 'create'}
      else
        format.html { render :new }
        format.json { render json: @live_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /live_scores/1
  # PATCH/PUT /live_scores/1.json
  def update
    respond_to do |format|
      if @live_score.update(live_score_params)
        format.html { redirect_to @live_score, notice: 'Live score was successfully updated.' }
        format.json { render :show, status: :ok, location: @live_score }
      else
        format.html { render :edit }
        format.json { render json: @live_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /live_scores/1
  # DELETE /live_scores/1.json
  def destroy
    @live_score.destroy
    respond_to do |format|
      format.html { redirect_to live_scores_url, notice: 'Live score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_live_score
      @live_score = LiveScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def live_score_params
      params.require(:live_score).permit(:teamone_goals, :teamtwo_goals,:commentary, :match_id)
    end
end
