class Match < ActiveRecord::Base
	has_many :teams
	has_many :goals
	has_many :live_scores
	has_many :photos

	#validations
	#validates :man_of_the_match, presence: true
	validates :result, presence: true, inclusion: {in: [-2, -1, 0, 1]}

	def first_team
			Team.find(self.team1_id)
	end

	def opponent_team
			Team.find(self.team2_id)
	end
end
