class Player < ActiveRecord::Base
	belongs_to :team
	has_many :goals

	def goals
		Goal.where(player_id: self.id).count
	end
end
