class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.references :weibo
      t.references :user
      t.text :content

      t.timestamps
    end
    add_index :coments, :weibo_id
    add_index :coments, :user_id
  end
end
