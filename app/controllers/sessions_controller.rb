class SessionsController < ApplicationController
	def new
		@user = User.new
    	render :new
	end

	def create
		user_params = params.require(:user).permit(:email, :password)
		@user = User.confirm(user_params)
		if @user
			login(@user)
			# redirect_to "/users/#{@user.id}"
			redirect_to user_path(@user.id)
		else
			@user = User.new
			# NOTE: Consider using the `flash` hash here\
			flash[:error] = "Email or password is incorrect."
			# @user.errors[:base] << "Password or Email is incorrect."
			render :new
		end
	end

	def destroy
		logout
		redirect_to root_path
	end
end
