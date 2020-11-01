class Show < ApplicationRecord
  # validations
  validates :movie_id, uniqueness: { scope: [:movie_id, :theater_id] }

  # associations
  belongs_to :movie
  belongs_to :theater
end
