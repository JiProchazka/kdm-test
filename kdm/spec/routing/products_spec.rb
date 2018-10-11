describe ProductsController do
	describe 'routing' do
		it 'routes GET /new_product to ProductsController#new' do
			expect(get("products/new")).to route_to(controller: 'products', action: 'new')
		end
	
		it 'routes GET /edit_product/1 to ProductsController#edit id=>3' do
			expect(get: 'products/3/edit').to route_to(controller: 'products', action: 'edit', id: "3")
		end
		
		it 'routes GET /product to ProductsController#index' do
			expect(get("products")).to route_to(controller: 'products', action: 'index')
		end
		
		it 'routes DELETE /product/1 to ProductsController#delete id=>1' do
			expect(delete("products/1")).to route_to(controller: 'products', action: 'destroy', id: "1")
		end
	
		it 'routes PUT /product to ProductsController#update id=>3' do
			expect(put("products/1")).to route_to(controller: 'products', action: 'update', id: "1")
		end
	end
end
