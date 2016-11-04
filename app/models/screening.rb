class Screening < ActiveRecord::Base
  belongs_to :user, inverse_of: :screenings
  belongs_to :movie, inverse_of: :screenings
  validates :rating, presence: true
end
