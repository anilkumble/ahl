class Report < ActiveRecord::Base
    belongs_to :match
    extend FriendlyId
    friendly_id :caption, use: :slugged

    validates :article, presence: true
    validates :image, presence: true
    validates :caption, presence: true
end
