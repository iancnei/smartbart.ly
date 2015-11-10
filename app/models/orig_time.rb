class OrigTime < ActiveRecord::Base
	# has_many :station_times
	# has_many :stations, :through => :station_times
	# has_many :line_times
	# has_many :lines, :through => :line_times

	belongs_to :station
	belongs_to :line
end
