module ApplicationHelper

	#NOTE: Consider using a module rather than a class if the singleton pattern is more appropriate.
	class BartApi
		#NOTE: Gems should be available across the application without the `include` statement
		include HTTParty
		self.base_uri 'api.bart.gov/api'
		@options = { query: {cmd: '', key: 'MW9S-E7SL-26DU-VV8V'} }

		def initialize()
		end

		def self.station(command, extraQuery)
			@options[:query][:cmd] = command
			if extraQuery != nil
				@options[:query] = @options[:query].merge(extraQuery)
			end
			self.get("/stn.aspx", @options)
		end

		def self.schedule(command, extraQuery)
			@options[:query][:cmd] = command
			if extraQuery != nil
				@options[:query] = @options[:query].merge(extraQuery)
			end
			self.get("/sched.aspx", @options)
		end

		def self.route(command, extraQuery)
			@options[:query][:cmd] = command
			if extraQuery != nil
				@options[:query] = @options[:query].merge(extraQuery)
			end
			self.get("/route.aspx", @options)
		end

	end
 
end
