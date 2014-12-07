class Createusers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :pwd
      t.string :email
      t.timestamps
    end

    drop_table :user_profiles

    create_table :user_profiles do |t|
      t.integer :uid
      t.integer :age
      t.integer :degree
      t.references :users
      t.string :majoy
      t.string :location
      t.string :occupation

      t.timestamps
    end
  end
end
