class CreateWeibos < ActiveRecord::Migration
  def change
    create_table :weibos do |t|
      t.references :user
      t.string :content

      t.timestamps
    end
  end
end
