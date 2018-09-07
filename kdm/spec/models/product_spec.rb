describe Product, :type => :model do
		subject {
			described_class.new(id: '2', description: 'some description', created_at: Time.now, updated_at: Time.now)
		}
	it 'is not valid when empty'do
		expect(Product.new).to be_invalid
	end

	it 'is valid with format: /[A-Z]{3}[-][0-9]{3}/' do
		subject.product_name = 'JBD-007'
		expect(subject).to be_valid
	end

	it 'is not valid with downcase letters' do
		subject.product_name = 'pcv-782'
		expect(subject).to be_invalid
	end

	it 'is not valid without dash' do
		subject.product_name = 'pcv782'
		expect(subject).to be_invalid
	end

	it 'is not valid with two digits' do
		subject.product_name = 'pcv-82'
		expect(subject).to be_invalid
  end

	it 'is not valid with four digits' do
		subject.product_name = 'pcv-7382'
		expect(subject).to be_invalid
	end
	
	it 'is not valid with less than 5 digits' do
		subject.product_name = 'DDR-667'
		subject.description = 'papa'
	end

	it 'is not valid without description' do
    subject.product_name = 'DDR-667'
		subject.description = nil
	end
end
