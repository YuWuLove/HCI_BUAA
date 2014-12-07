class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :pwd
      t.string :email
      t.references :weibos
      t.references :user_profiles

      t.timestamps
    end
  end
end
