class AddLocationToUserprofile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :location, :string
  end
end
