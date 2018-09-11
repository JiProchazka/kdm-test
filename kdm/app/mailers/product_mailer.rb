class ProductMailer < ApplicationMailer
	default from: "piotrek.wydrzycki@gmail.com"

  def new_product(user, description)
		@description = description
		@user = user
		mail to: @user.email
  end
end
