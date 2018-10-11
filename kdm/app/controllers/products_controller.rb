class ProductsController < ApplicationController
  def index
    if params[:search]
      @products = Product.options_sortable(params)
			respond_to do |format|
				format.js{render partial: "search-results"}
        format.html
			end
		else
			@products =	Product.all.paginate(:page =>params[:page], :per_page => 20)
		end
  end

  def new
  	@product = Product.new
  end

  def create
		@product = Product.create(product_params)
		@users = User.all
		if @product.save
			flash[:notice] = "New product #{@product.product_name} created"
			logger.debug "Product #{@product.product_name} created"

			@users.each do |user|
				ProductMailer.new_product(user, @product.description).deliver
			end

			redirect_to products_path
		else
			flash[:alert] = "Something went wrong"
			render new_product_path
		end
  end

  def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			flash[:notice] = "Product updated"
			redirect_to products_path
		else
			render 'edit'
		end
  end

	def edit
		@product = Product.find(params[:id])
	end

  def destroy
		@product = Product.find(params[:id])
		@product.destroy
		flash[:alert] = "#{@product.product_name} destroyed"
		redirect_to products_path
  end

	private
	def product_params
		params.require(:product).permit(:product_name, :description, :order_id)
	end
end
