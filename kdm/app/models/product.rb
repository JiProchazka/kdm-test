class Product < ApplicationRecord
	belongs_to :user
	validates :product_name, uniqueness: true,
			    	format: { with: /[A-Z]{3}[-][1-9]{3}/ }

	validates :description, presence: true,
					   length: { minimum: 5 }
end
