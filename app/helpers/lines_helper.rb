module LinesHelper
	include ApplicationHelper

	def get_station_by_abbreviation(station_abbreviation)
		Station.find_by_abbreviation(station_abbreviation)
	end

	def get_station_by_id(station_id)
		Station.find_by_id(station_id)
	end

end
