class Match < ActiveRecord::Base
	has_many :teams
	has_many :goals
	has_many :live_scores
end
