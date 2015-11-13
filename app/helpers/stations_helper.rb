module StationsHelper
	#NOTE: is the below `include` necessary?
	include ApplicationHelper

	def get_lines(station, line_direction)
    	@station_lines = []
		if station["root"]["stations"]["station"][line_direction] != nil
			if station["root"]["stations"]["station"][line_direction]["route"].respond_to?("each")
				station["root"]["stations"]["station"][line_direction]["route"].each do |line|
					@station_lines.push(line.gsub(/[^\d]/, ''))
				end
			else
				@station_lines.push(station["root"]["stations"]["station"][line_direction]["route"].gsub(/[^\d]/, ''))
			end
		end
		return @station_lines
	end

	def get_line_name(line_number)
		if line_number != nil
			Line.find_by_number(line_number)
		end
	end

	def get_station_times(station, direction)
    	@station_times = {}
    	Time.now.getlocal('-07:00').isdst ? currentTime = Time.now.getlocal('-07:00') + 3600 : currentTime = Time.now.getlocal('-07:00')
		station.each do |line|
			@station_times["#{line}"] = []
			lineSchedule = OrigTime.where(station_id: @wanted_station.id, line_number: line).order(:train_index)
			lineSchedule.each do |arrival|
				if arrival.value.in_time_zone("Pacific Time (US & Canada)") > currentTime
				# if arrival.value.in_time_zone("Pacific Time (US & Canada)") > Time.now.getlocal('-07:00')
		 			@station_times["#{line}"].push(arrival)
		 		end
	 		end
		end
		return @station_times
	end

end
