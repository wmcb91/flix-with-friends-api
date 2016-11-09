class ScreeningSerializer < ActiveModel::Serializer
  attributes :id, :user, :movie, :user_rating, :watched_recently
  has_one :user

  def user
    object.user.id
  end

  def movie
    object.movie.id
  end
end
