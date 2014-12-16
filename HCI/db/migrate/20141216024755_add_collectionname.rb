class AddCollectionname < ActiveRecord::Migration
  def change
    change_table :Collections do |t|
      t.string :name
    end
  end
end
