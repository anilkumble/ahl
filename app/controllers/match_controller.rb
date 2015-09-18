class MatchController < ApplicationController
  def index
  	#@match = "Crocuhing Griffinz - Roaring Griffinz 2016-01-01"
  end

  def new 
  	@match = Match.new
  end

end
