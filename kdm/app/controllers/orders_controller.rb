class OrdersController < ApplicationController
  def index
		@orders = Order.all
  end

  def new
  	@order = Order.new
  end

  def create
		@order = Order.create(order_params)

		if @order.save
			flash[:notice] = "New order create"
			redirect_to orders_path
		else
			flash.now[:alert] = "Something Gone wrong"
			render new_order_path
		end
  end

  def update
		@order = Order.find(params[:id])

		if @order.update(order_params)
			redirect_to orders_path
		else
			render 'edit'
		end
  end
	
	def edit
		@order = Order.find(params[:id])
	end

  def destroy
		@order = Order.find(params[:id])
		@order.destroy

		redirect_to orders_path
  end

	private
	def order_params
		params.require(:order).permit(:user_id)
	end
end 
