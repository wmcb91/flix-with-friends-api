class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_one :profile
  has_many :movies, through: :screenings
  has_many :screenings
end
