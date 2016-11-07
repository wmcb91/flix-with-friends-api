class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_one :profile
  has_many :movies, through: :screenings
  has_many :screenings
  validates :username, uniqueness: { message: 'this user name already exists' }
end
