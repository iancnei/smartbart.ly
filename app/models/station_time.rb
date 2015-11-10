class StationTime < ActiveRecord::Base
	belongs_to :station
	belongs_to :orig_time
end
