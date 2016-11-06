class Profile < ActiveRecord::Base
  belongs_to :user
  validates :user_name, :given_name, :surname, presence: true
  validates :user, uniqueness: { message: 'this user already has a profile' }
  validates :user_name, uniqueness: { message: 'this user name already exists' }
end
