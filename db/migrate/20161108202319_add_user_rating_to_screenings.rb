class AddUserRatingToScreenings < ActiveRecord::Migration
  def change
    add_column :screenings, :user_rating, :integer
  end
end
