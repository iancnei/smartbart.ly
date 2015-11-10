class TipsController < ApplicationController

	def create
		@tip = Tip.new(tip_params)
		if @tip.save
			# NOTE: you could refactor this with `if defined? @tip.station` it is arguable more readable.
			if @tip.station_id != nil
				# redirect_to "/stations/#{params[:tip][:station_id]}"
				redirect_to station_path(Station.friendly.find(@tip.station_id).slug)
			elsif @tip.line_id != nil
				redirect_to line_path(Line.friendly.find(@tip.line_id).slug)
			#NOTE: Is there never a chance that both could be defined and an `else` is needed?
			end
		else
			render :new
		end
	end

	private

  	def tip_params
    	params.require(:tip).permit(:description, :user_id, :station_id, :line_id)
  	end


end
