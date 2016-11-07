class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname
  belongs_to :user
end
