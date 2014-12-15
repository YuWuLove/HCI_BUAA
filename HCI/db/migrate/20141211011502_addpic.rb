class Addpic < ActiveRecord::Migration
  def change
    change_table :albums do |t|
      t.attachment :avatar
      t.string :tag
    end

    change_table :weibos do |t|
      t.attachment :avatar
      t.references :album
    end
  end
end
