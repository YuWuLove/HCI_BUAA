class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.references :user
      t.references :weibo
      t.timestamps
    end
  end
end
