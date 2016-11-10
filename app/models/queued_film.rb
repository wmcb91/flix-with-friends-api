class QueuedFilm < ActiveRecord::Base
  # belongs_to :user, inverse_of: :queued_films
  # belongs_to :movie, inverse_of: :queued_films
  # validates :movie_id, uniqueness: { scope: :user_id }
end
