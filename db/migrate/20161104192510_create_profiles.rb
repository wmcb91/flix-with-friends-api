class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_name
      t.string :given_name
      t.string :surname
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
