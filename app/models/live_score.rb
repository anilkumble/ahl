class LiveScore < ActiveRecord::Base
    belongs_to :match

    #validations

    validates :teamone_goals, numericality: true
    validates :teamtwo_goals, numericality: true
    validates :commentary, presence: true
end
