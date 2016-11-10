class Screening < ActiveRecord::Base
  belongs_to :user, inverse_of: :screenings
  belongs_to :movie, inverse_of: :screenings
  validates :user_rating, presence: true, numericality: { only_integer: true }
  validates :movie_id, uniqueness: { scope: :user_id }
end
