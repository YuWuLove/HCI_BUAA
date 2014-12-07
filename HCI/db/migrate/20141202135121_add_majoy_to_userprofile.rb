class AddMajoyToUserprofile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :majoy, :string
  end
end
