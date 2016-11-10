class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :movies # , :screenings
  has_one :profile

  def movies
    object.movies.pluck(:id)
  end

  def screenings
    object.screenings.pluck(:id)
  end
end
