require "rails_helper"

RSpec.describe ProductMailer, type: :mailer do
  describe "new_product" do
    let(:mail) { ProductMailer.new_product }

    it "renders the headers" do
      expect(mail.subject).to eq("New product")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
