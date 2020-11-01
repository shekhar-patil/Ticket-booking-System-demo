class Theater < ApplicationRecord
  has_many :movies, through: :show
end
