class OrderItemsController < ApplicationController
  def new
		@order_items = OrderItem.new
  end

  def create
		@order_items = OrderItem.create(order_item_params)

		if @order_item.save
			flash[:notice] = 'Order added'
			redirect_to 'index'
		else
			flash[:alert] = 'Something goes wrong'
			render 'new'
		end
  end

  def index
  end

  def update
  end

  def destroy
  end

	private

	def order_item_params
		params.require(:order_item).permit(:product_id, :order_id)
	end
end
