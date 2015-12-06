class Report < ActiveRecord::Base
    extend FriendlyId
    friendly_id :caption, use: :slugged
end
