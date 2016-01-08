class Photo < ActiveRecord::Base
    belongs_to :match
    validates :photo_url, presence: true
end
