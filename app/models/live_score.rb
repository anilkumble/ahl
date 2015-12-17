class LiveScore < ActiveRecord::Base
    belongs_to :match

    #validations

    validates :teamone_goals, presence: true, numericality: true
    validates :teamtwo_goals, presence: true, numericality: true
    validates :commentary, presence: true
end
