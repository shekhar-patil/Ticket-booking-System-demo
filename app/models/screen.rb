class Screen < ApplicationRecord
  belongs_to :show
  has_many :time_slots
end
