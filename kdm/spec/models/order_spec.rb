require 'rails_helper'

RSpec.describe Order, type: :model do
	subject { described_class.new }

	describe "Validations" do
		it 'is not valid without user_id' do
			expect(subject).not_to be_valid		
		end
		
		it 'is valid with user_id' do
			subject.user_id = '1'
			expect(subject).to be_valid
		end
	end
end
