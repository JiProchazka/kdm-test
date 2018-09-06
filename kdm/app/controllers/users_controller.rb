class UsersController < ApplicationController
  def new
	 @user = User.new
  end

  def create
		@user = User.create(user_params)

		if @user.save!
			flash[:notice] = "You are a new User"
			redirect_to root_url
		else
			render 'new'
		end
  end

  def update
  end

  def delete
  end
	
	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
