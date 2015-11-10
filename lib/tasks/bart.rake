namespace :api_request do
	desc "Request info from the BART API to update the database at regular intervals"
	task bart: :environment do
		BartApiRequestWorker.new.perform
		# puts "task working"
	end
end