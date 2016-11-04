class ScreeningSerializer < ActiveModel::Serializer
  attributes :id, :rating, :watched_recently
  has_one :user
  has_one :movie
end
