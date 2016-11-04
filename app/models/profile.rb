class Profile < ActiveRecord::Base
  belongs_to :user
  validates :user_name, :given_name, :surname, presence: true
end
