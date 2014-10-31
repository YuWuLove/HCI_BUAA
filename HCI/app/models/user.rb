class User < ActiveRecord::Base
  attr_accessible :name, :pwd, :age
end
