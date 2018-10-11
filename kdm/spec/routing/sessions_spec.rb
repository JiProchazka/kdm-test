describe SessionsController do
	describe 'routing' do
		it 'routes GET /login to SessionsController#new' do
			expect(get: '/login').to route_to(controller: 'sessions', action: 'new')
		end
		it 'routes GET /logout to SessionsController#destroy' do
			expect(get: '/logout').to route_to(controller: 'sessions', action: 'destroy')
		end
	end
end
