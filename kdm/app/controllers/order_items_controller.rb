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
		@order_items = OrderItem.all
  end

  def update
		@order_item = OrderItem.find(params[:id])

		if @order_item.update(order_item_params)
				redirect_to root_path
		else
				render 'edit'
		end
  end

  def destroy
		@order_item = OrderItem.find(params[:id])
		@order_item.destroy
    
		redirect_to root_path
  end
	
	def order_item_params
		params.require(:order_item).permit(:product_id, :order_id)
	end
end
