describe UsersController do
	describe 'routing' do
		it 'routes GET /new_user to UsersController#new' do
			expect(get("users/new")).to route_to(controller: 'users', action: 'new')
		end
	
		it 'routes GET /edit_user to UsersController#edit id=>3' do
			expect(get: 'users/3/edit').to route_to(controller: 'users', action: 'edit', id: "3")
		end
		
		it 'routes GET /user to UsersController#index' do
			expect(get("users")).to route_to(controller: 'users', action: 'index')
		end
		
		it 'routes DELETE /user to UsersController#delete id=>1' do
			expect(delete("users/1")).to route_to(controller: 'users', action: 'destroy', id: "1")
		end
	
		it 'routes PUT /user to UsersController#update id=>1' do
			expect(put("users/1")).to route_to(controller: 'users', action: 'update', id: "1")
		end
	end
end
