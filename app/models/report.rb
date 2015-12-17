class Report < ActiveRecord::Base
    extend FriendlyId
    friendly_id :caption, use: :slugged

    validates :article, presence: true
    validates :image, presence: true
    validates :caption, presence: true
end
