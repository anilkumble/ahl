class Match < ActiveRecord::Base
	has_many :teams
	has_many :goals
end
