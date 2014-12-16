class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.references:user
      t.references:weibo
      t.references:collection
      t.references:album
      t.timestamps
    end
  end
end
