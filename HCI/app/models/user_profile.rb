class UserProfile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :age, :degree, :uid, :avatar , :occupation, :majoy , :location, :user_id, :perference, :qianming,:status
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type =>  /\Aimage\/.*\Z/
end
