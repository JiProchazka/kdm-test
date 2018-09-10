describe OrderItem, :type => :model do
	subject { described_class.new(order_id: "1", product_id: "1", quantity: "1")
	}
	describe 'Validations' do
		it "is valid with attributes" do
			expect(subject).to be_valid
		end
		
		it 'is not valid without order_id' do
			subject.order_id = nil
			expect(subject).to be_invalid
		end

		it 'is not valid without product_id' do
			subject.product_id = nil
			expect(subject).to be_invalid
		end		

		it 'is not valid with quantity is less that 0' do 
			subject.quantity = "-1"
			expect(subject).to be_invalid
		end

		it 'is valid with quantity = 0' do
			subject.quantity = '0'
			expect(subject).to be_valid
		end
	end
end
