class AddAttachmentAvatarToWeibos < ActiveRecord::Migration
  def self.up
    change_table :weibos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :weibos, :avatar
  end
end
