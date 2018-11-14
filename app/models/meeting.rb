class Meeting < ApplicationRecord
    belongs_to :user
    belongs_to :tag
    has_many :attendees
end
