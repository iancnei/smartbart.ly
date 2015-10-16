class Line < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

  #NOTE: This is a fine quick & dirty solution, but a join table would be a much better final implimentation
	serialize :stations,Array

	# has_many :line_times
	# has_many :orig_times, :through => :line_times

	has_many :orig_times
end
