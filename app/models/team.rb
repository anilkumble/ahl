class Team < ActiveRecord::Base
	extend FriendlyId
	has_many :players, dependent: :destroy
	friendly_id :name, use: :slugged

	has_many :goals, through: :players

	def matches(opponent_id)
		Match.where(team1_id: [self.id, opponent_id],team2_id: [opponent_id,self.id]).count
	end

	def goals_scored(opponent_id)
		players = self.players
		Goal.where(player_id: players, opponent_id: opponent_id).count
	end
end
