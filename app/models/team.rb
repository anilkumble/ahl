class Team < ActiveRecord::Base
	extend FriendlyId
	has_many :players, dependent: :destroy
	friendly_id :name, use: :slugged
end
