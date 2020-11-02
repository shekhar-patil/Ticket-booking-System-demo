class Seat < ApplicationRecord
  belongs_to :time_slot
  belongs_to :user, optional: true
end
