class UsersController < ApplicationController
  def new
	 @user = User.new
  end

  def create
		@user = User.create(user_params)

		if @user.save
			flash[:notice] = "You are a new User"
			session[:user_id] = @user.id
			redirect_to root_url
		else
			render 'new'
		end
  end

	def update
		@user = current_user

		if @user.update(user_params)
			flash[:notice] = "User updated"
		  redirect_to new_session_path
		else
			render 'new'
		end
  end

	def edit
		@user = current_user
	end

  def destroy
		@user = current_user
		@user.destroy
		flash[:alert] = "User succesfull deleted"
		redirect_to new_session_path
  end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
