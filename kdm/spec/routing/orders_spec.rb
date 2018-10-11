describe OrdersController do
	describe 'routing' do
		it 'routes GET /new_order to OrdersController#new' do
			expect(get("orders/new")).to route_to(controller: 'orders', action: 'new')
		end
	
		it 'routes GET /edit_order/1 to OrdersController#edit id=>3' do
			expect(get: 'orders/3/edit').to route_to(controller: 'orders', action: 'edit', id: "3")
		end
		
		it 'routes GET /order to OrdersController#index' do
			expect(get("orders")).to route_to(controller: 'orders', action: 'index')
		end
		
		it 'routes DELETE /order/1 to OrdersController#delete id=>1' do
			expect(delete("orders/1")).to route_to(controller: 'orders', action: 'destroy', id: "1")
		end
	
		it 'routes PUT /order to OrdersController#update id=>3' do
			expect(put("orders/1")).to route_to(controller: 'orders', action: 'update', id: "1")
		end
	end
end
