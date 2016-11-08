class RemoveRatingFromScreenings < ActiveRecord::Migration
  def change
    remove_column :screenings, :rating, :integer
  end
end
