class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :given_name, :surname
  belongs_to :user
end
