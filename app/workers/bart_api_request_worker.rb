class BartApiRequestWorker
	
	include ApplicationHelper
	
	def perform
		allLines = Line.all
		allTimes = OrigTime.all
		counter = 0
		allLines.each do |line|
			lineTimes = BartApi.schedule("routesched", {route: line.number})
			lineTimes["root"]["route"]["train"].each do |train|
				train["stop"].each do |arrival|
					if arrival["origTime"] != nil
						if allTimes.empty?
							OrigTime.create({value: Time.parse(arrival["origTime"], Time.now), line_number: line.number, station_id: Station.find_by_abbreviation(arrival["station"]).id, train_index: train["index"]})
							puts counter += 1
						else
							allTimes[counter].update()
							puts counter += 1
						end
					end
				end 
			end 
		end
	end

end