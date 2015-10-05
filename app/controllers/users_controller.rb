class UsersController < ApplicationController

	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
		@user = User.create(user_params)

		redirect_to "/users/#{@user.id}"
	end

	def show
		@user = User.find_by({id: params[:id]})
	end

	def show_stations
	end
end
