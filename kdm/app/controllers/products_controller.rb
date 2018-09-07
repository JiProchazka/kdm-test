class ProductsController < ApplicationController
  def index
		@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
		@product = Product.create(product_params)

		if @product.save
			flash[:notice] = "New product create"
			redirect_to products_index_path
		else
			flash.now[:alert] = "Something Gone wrong"
			render new_product_path
		end
  end

  def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			redirect_to products_index_path
		else
			render 'edit'
		end
  end

  def delete
  end

	private
	def product_params
		params.require(:product).permit(:product_name, :description)
	end
end
