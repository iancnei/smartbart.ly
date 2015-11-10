class BartApiRequestWorker
	
	include ApplicationHelper
	
	def perform
		# use delete_all to get rid of all old entries, only do this the first time before updating entries

		allLines = Line.all
		allTimes = OrigTime.all
		firstRun = false
		if allTimes.empty?
			firstRun = true
		end
		counter = 0
		allLines.each do |line|
			lineTimes = BartApi.schedule("routesched", {route: line.number})
			lineTimes["root"]["route"]["train"].each do |train|
				train["stop"].each do |arrival|
					if arrival["origTime"] != nil
						if firstRun
							# if arrival["origTime"] != nil && Time.parse(arrival["origTime"]) > Time.now
								OrigTime.create({value: Time.parse(arrival["origTime"], Time.now), line_number: line.number, station_id: Station.find_by_abbreviation(arrival["station"]).id, train_index: train["index"]})
								puts counter += 1
							# end
						else
							puts counter += 1
							OrigTime.find(counter).update({value: Time.parse(arrival["origTime"], Time.now), line_number: line.number, station_id: Station.find_by_abbreviation(arrival["station"]).id, train_index: train["index"]})
						end
					end
				end 
			end 
		end
	end

end