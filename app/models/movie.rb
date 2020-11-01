class Movie < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { in: 22..200 }
  has_many :theaters, through: :show
end
