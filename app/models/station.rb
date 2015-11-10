class Station < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	has_many :tips
	has_many :favorite_stations
	has_many :users, :through => :favorite_stations

	# has_many :station_times
	# has_many :orig_times, :through => :station_times

	has_many :orig_times
end
