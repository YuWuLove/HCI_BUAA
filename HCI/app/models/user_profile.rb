class UserProfile < ActiveRecord::Base
  attr_accessible :age, :degree, :uid, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type =>  { :content_type => "image/png" }
end
