class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :uid
      t.integer :age
      t.integer :degree

      t.timestamps
    end
  end
end
