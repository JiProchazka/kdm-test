class Product < ApplicationRecord
	belongs_to :order

	validates :product_name, uniqueness: true,
			    	format: { with: /\A[A-Z]{3}[-][0-9]{3}\z/ }

	validates :description, presence: true,
					   length: { minimum: 5 }


	def self.options_sortable(params)
		where(["product_name LIKE ?", "%#{params[:search]}%"]).paginate(:page =>params[:page], :per_page => 20).order(params[:sort])
	end
end
