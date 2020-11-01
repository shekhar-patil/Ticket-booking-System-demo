class Movie < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { in: 22..200 }
end
