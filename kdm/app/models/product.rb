class Product < ApplicationRecord
	belongs_to :order

	validates :product_name, uniqueness: true,
			    	format: { with: /[A-Z]{3}[-][0-9]{3}/ }

	validates :description, presence: true,
					   length: { minimum: 5 }

end
