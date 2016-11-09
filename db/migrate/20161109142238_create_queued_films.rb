class CreateQueuedFilms < ActiveRecord::Migration
  def change
    create_table :queued_films do |t|
      t.integer :order_rank
      t.references :movie, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
