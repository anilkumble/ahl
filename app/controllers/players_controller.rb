class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except:[:show]

  #Don't remove index action
  #useful for updating goals(to find the user id)
  def index
    @players = Player.all

  end


  def show
      respond_to do |format|
         format.js
         format.json
      end
  end

  def new
    @player = Player.new
  end


  def edit
  end

  def create
    @player = Player.new(player_params)
    @player.save
    respond_to do |format|
      format.js
    end
  end

  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to players_url, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
      @player.destroy
       respond_to do |format|
        format.js
      end
  end
  
  private

    def set_player
      @player = Player.find(params[:id])
    end

    #Dont allow any other parameters
    def player_params
      params.require(:player).permit(:name, :age, :team_id, :position, :gender, :goals_count, :red_cards, :green_cards, :yellow_cards, :photo)
    end

    def authenticate
       authenticate_or_request_with_http_basic("Trespassers will be prosecuted") do |username, password|
          username == ENV['USERNAME'] and password == ENV['ADMIN_PASSWORD']
      end
    end
end
