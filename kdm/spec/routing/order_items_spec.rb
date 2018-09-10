describe OrderItemsController do
	describe 'routing' do
		it 'routes GET /new_order_item to OrderItemsController#new' do
			expect(get("order_items/new")).to route_to(controller: 'order_items', action: 'new')
		end
	
		it 'routes GET /edit_order_item/1 to OrderItemsController#edit id=>3' do
			expect(get: 'order_items/3/edit').to route_to(controller: 'order_items', action: 'edit', id: "3")
		end
		
		it 'routes GET /order_item to OrderItemsController#index' do
			expect(get("order_items")).to route_to(controller: 'order_items', action: 'index')
		end
		
		it 'routes DELETE /order_item/1 to OrderItemsController#delete id=>1' do
			expect(delete("order_items/1")).to route_to(controller: 'order_items', action: 'destroy', id: "1")
		end
	
		it 'routes PUT /order_item to OrderItemsController#update id=>3' do
			expect(put("order_items/1")).to route_to(controller: 'order_items', action: 'update', id: "1")
		end
	end
end
