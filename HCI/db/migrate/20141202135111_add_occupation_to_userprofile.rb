class AddOccupationToUserprofile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :occupation, :string
  end
end
