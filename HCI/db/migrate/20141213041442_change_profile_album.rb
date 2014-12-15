class ChangeProfileAlbum < ActiveRecord::Migration
  def change
    change_table :User_Profiles do |t|
      t.string :perference
      t.string :qianming
      t.string :status
    end
  end
end
