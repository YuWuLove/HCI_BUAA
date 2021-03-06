class Album < ActiveRecord::Base
  attr_accessible :description, :name, :user_id, :avatar, :tag
  belongs_to :user
  has_many :weibos
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type =>  /\Aimage\/.*\Z/
end
