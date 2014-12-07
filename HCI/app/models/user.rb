class User < ActiveRecord::Base
  attr_accessible :name, :pwd, :email
  has_many :weibos
  has_one :user_profile
  
  def User.new_remember_token
	SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
	Digest::SHA1.hexdigest(token.to_s)
	end

  private
	def create_remember_token
	self.remember_token = User.encrypt(User.new_remember_token)
	end
end
