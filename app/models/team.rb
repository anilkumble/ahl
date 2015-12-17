class Team < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged
	has_many :players, dependent: :destroy
	has_many :goals, through: :players

	# helper for collection_select
	def team_name
		self.name.downcase.capitalize
	end

	def team_captain
		Player.find(captain)
	end

	# Returns the number of matches ended between two teams

	def matches(opponent_id)
		@matches = []
		m = Match.where(team1_id: [self.id, opponent_id],team2_id: [self.id, opponent_id])
		m.each do |match|
			if match.result != -2
				@matches << match
			end
		end
		@matches
	end

	# Returns the recent 4 matches for team's recent performance
	def recent_matches
		Match.where("(team1_id=? OR team2_id=?) AND result<>?",self.id, self.id,-2).order(id: :desc).limit(4)
	end

	# Returns the goals scored by versus team versus opponent
	# Used for goals scored  and goals against

	def goals_scored(opponent_id)
		players = self.players
		Goal.where(player_id: players, opponent_id: opponent_id).count
	end


	#returns the number of draws against a team
	def draws_count opponent_id
		matches = self.matches opponent_id
		draws = 0
		matches.each do |match|
			if match.result == 0
				draws += 1
			end
	    end
		draws
	end

	#returns the number of wins a team has over another team, naive approach
	def wins_count opponent_id
		matches = self.matches opponent_id
		wins = 0
		matches.each do |match|
			# first team
			if self.id == match.team1_id
				if match.result == 1
					wins += 1
				end
			# if the team is the team2, then result has to be -1 for the team to win
			elsif self.id == match.team2_id
				if match.result == -1
					wins += 1
				end
			end
		end
		wins
	end

	def losses_count opponent_id
		matches = self.matches opponent_id
		matches.length - (self.wins_count(opponent_id)) - (self.draws_count(opponent_id))
	end

end  # end of class
