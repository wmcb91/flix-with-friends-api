class Movie < ActiveRecord::Base
  has_many :users, through: :screenings
  has_many :screenings
  has_many :queued_films
end
