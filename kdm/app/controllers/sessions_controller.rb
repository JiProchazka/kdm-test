class SessionsController < ApplicationController
  def new
  end

	def create
		user = User.find_by email: params[:email]
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = 'You are signed in'
		  redirect_to root_url
		else
			flash.now[:alert] = 'Invalid email/password'
			render new_session_path
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = 'You are now singed out'
		redirect_to root_url
	end
end
