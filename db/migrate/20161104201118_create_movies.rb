class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.integer :year_released
      t.string :genre
      t.decimal :imdb_rating, precision: 4, scale: 1
      t.integer :critic_tomato_meter
      t.integer :critic_reviews
      t.integer :audience_tomato_score
      t.integer :audience_reviews

      t.timestamps null: false
    end
  end
end
