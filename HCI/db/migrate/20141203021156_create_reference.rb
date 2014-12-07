class CreateReference < ActiveRecord::Migration
  def change
    add_column :User_Profiles, :user, :reference
  end
end
