class Dropprofile < ActiveRecord::Migration
  def self.up
    drop_table :users
  end
end
