class TimeSlot < ApplicationRecord
  belongs_to :screen
  has_many :seats
end
