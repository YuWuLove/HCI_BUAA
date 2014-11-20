class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :uid
      t.integer :fid

      t.timestamps
    end
  end
end
