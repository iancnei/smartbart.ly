class UsersController < ApplicationController

	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:first_name, :last_name, :email, :email_confirmation, :password, :password_confirmation)
		@user = User.new(user_params)
		if @user.save
			login(@user)
			# redirect_to "/users/#{@user.id}"
			redirect_to user_path(@user.id)
		else
			render :new
		end
	end

	def show
		# @user = User.find_by({id: params[:id]})
		@user = User.find_by_id(params[:id]) 
	end

	# def show_stations
	# 	@user = User.find_by({id: params[:id]})
	# end
end
