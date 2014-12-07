class DeleteReference < ActiveRecord::Migration
  def change
    add_column :User_Profiles, :users, :reference
  end
end
