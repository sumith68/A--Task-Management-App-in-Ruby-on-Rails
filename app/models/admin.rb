class Admin < ActiveRecord::Base
	validates :user_name, :presence => true
	validates :password, :presence => true
end
