describe WelcomeController do
	describe 'routing' do
		it 'routes GET / WelcomeController#index' do
			expect(get("/")).to route_to(controller: 'welcome', action: 'index')
		end
	
		it 'routes GET /index to WelcomeController#index' do
			expect(get: 'welcome/index').to route_to(controller: 'welcome', action: 'index')
		end
	end
end
