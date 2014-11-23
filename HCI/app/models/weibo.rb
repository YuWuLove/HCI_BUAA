class Weibo < ActiveRecord::Base
  attr_accessible :content, :user
  belongs_to :user
  has_many :coment
end
