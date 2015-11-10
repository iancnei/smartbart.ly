class LineTime < ActiveRecord::Base
	belongs_to :line
	belongs_to :orig_time
end
