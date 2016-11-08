class ScreeningSerializer < ActiveModel::Serializer
  attributes :id, :user, :movie_id, :user_rating, :watched_recently
  has_one :user
end
