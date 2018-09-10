describe User, :type => :model do
		subject { described_class.new(password: "password", email: "example@ruby.com") }
		
	describe "Validations" do
		it 'is valid with valit attributes' do
			expect(subject).to be_valid
	  end

		it 'is not valid without password' do
			subject.password = nil
			expect(subject).not_to be_valid
    end
		
		it 'is not valid without email' do 
			subject.email = nil
			expect(subject).not_to be_valid
		end
	end
end
