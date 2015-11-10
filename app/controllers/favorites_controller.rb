class FavoritesController < ApplicationController
	def create
		@user = User.find(current_user)
		@station = Station.find(params[:id])
		
		@user.stations << @station
		if @user.save
			render json: @station, status: :created
		else
			render status: 400
		end
	
	end

	def destroy
		@user = User.find(current_user)
		@station = Station.find(params[:id])

		@user.stations.destroy(@station)
		if @user.save
			render json: @station, status: 204
		else
			render  nothing: true, status: 501
		end
	end


end
