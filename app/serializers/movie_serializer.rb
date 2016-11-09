class MovieSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :director,
             :year_released,
             :genre,
             :rating,
             :imdb_rating,
             :critic_tomato_meter,
             :critic_reviews,
             :audience_tomato_score,
             :audience_reviews,
             :users,
             :screenings,
             :queued_films

  def users
    object.users.pluck(:id)
  end

  def screenings
    object.screenings.pluck(:id)
  end

  # make queued_films
  # def screenings
  #   object.screenings.pluck(:id)
  # end
end
