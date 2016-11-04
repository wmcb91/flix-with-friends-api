class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :given_name, :surname
  has_one :user
end
