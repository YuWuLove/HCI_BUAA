class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :User_Profile, :reference
  end
end
