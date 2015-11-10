class StationsController < ApplicationController

  def index
  	@stations = Station.all
    if @current_user
      @user = current_user
      @favorite_stations = @user.stations 
    end
  end

  def show
  	@wanted_station = Station.friendly.find(params[:id])
    @tip = Tip.new
    @tips = Tip.where(station_id: @wanted_station.id).order(:created_at).reverse

  	# get the specified station's info
    station = BartApi.station("stninfo", {orig: @wanted_station.abbreviation})

    #NOTE: Great organization & modularity using `getLines` & `getStationTimes`. It's common to use snake_case rather than CamelCase in ruby.

  	# drill down to the routes we need and append them to the array of routes
  	@stationNorthLines = get_lines(station, "north_routes")
  	@stationSouthLines = get_lines(station, "south_routes")

  	# go through each route's schedule and find the station and its associated time
  	@stationNorthTimes = get_station_times(@stationNorthLines, "north")
    @stationSouthTimes = get_station_times(@stationSouthLines, "south")
  end

end
