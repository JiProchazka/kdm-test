class User < ApplicationRecord
	has_many :products
	has_secure_password
	
	validates :email, uniqueness: true
end
