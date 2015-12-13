class Team < ActiveRecord::Base
	extend FriendlyId
	has_many :players, dependent: :destroy
	friendly_id :name, use: :slugged

	has_many :goals, through: :players

	def team_captain
		Player.find(captain)
	end

	def matches(opponent_id)
		@matches = []
		m = Match.where(team1_id: [self.id, opponent_id],team2_id: [opponent_id,self.id])
		m.each do |match|
			if match.result != -2
				@matches << match
			end
		end
		@matches.length
	end

	def recent_matches
		Match.where("team1_id=? OR team2_id=? AND NOT result=?",self.id, self.id,-2).order(id: :desc).limit(5)
	end

	def goals_scored(opponent_id)
		players = self.players
		Goal.where(player_id: players, opponent_id: opponent_id).count
	end
end
