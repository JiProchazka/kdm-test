require 'rails_helper'

RSpec.describe Order, type: :model do
	user = User.create(email: 'piotr@gmail.com', password: 'password', id: '1')
	subject { described_class.new( user_id: user.id, name: 'name') }

	describe "Validations" do

		it 'is valid with user_id' do
			expect(subject).to be_valid
		end

		it 'is not valid without user_id' do
			subject.user_id = nil
			expect(subject).not_to be_valid		
		end
	end
end
