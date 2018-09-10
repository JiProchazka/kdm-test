require 'rails_helper'

RSpec.describe OrderItem, type: :model do
				
	let(:user) { User.create!( email: "example@ruby.com", password: "password")}
	let(:order) { Order.create!(user_id: '1', order_id: '1')}

	let(:product) { Product.create!( product_id:'1', name: 'RTL-007', description: 'description lorem ipsum')}


	subject { described_class.new( id: '1', quantity: '2', product_id: '1', order_id: '1')
	}
	describe 'Validates' do
		it 'is valid with valid attributes' do
			expect(subject).to be_valid
		end

		it 'is invalid without product_id' do
			subject.product_id = nil
			expect(subject).to be_invalid
		end
	
		it 'is invalid without order_id' do
			subject.order_id = nil
			expect(subject).to be_invalid
		end
	
		it 'is invalid with without quantity' do
			subject.quantity = nil
			expect(subject).to be_invalid
		end
	
	
		it 'is invalid with quantity < 0' do
			subject.quantity = '-1'
			expect(subject).to be_invalid
		end
	
		it 'is valid with quantity = 0' do
			subject.quantity = '0'
			expect(subject).to be_valid
		end
	end
end
