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
             :audience_reviews
end
