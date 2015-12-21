class Goal < ActiveRecord::Base
    belongs_to :match
    belongs_to :player

    validates :player_id, presence: true
    validates :opponent_id, presence: true
    validate :right_team

    def right_team
        if self.player_id and self.opponent_id
            team = Player.find(self.player_id).team
            if team.id == self.opponent_id
                errors.add(:player_id,"belongs to the same team as the opponent")
            end
        end
    end
end
