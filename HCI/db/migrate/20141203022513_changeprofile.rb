class Changeprofile < ActiveRecord::Migration
  drop_table :user_profiles

  create_table :user_profiles do |t|
    t.integer :uid
    t.integer :age
    t.integer :degree
    t.references :user
    t.string :majoy
    t.string :location
    t.string :occupation

    t.timestamps
  end
end
