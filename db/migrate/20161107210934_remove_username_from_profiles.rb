class RemoveUsernameFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :user_name, :string
  end
end
