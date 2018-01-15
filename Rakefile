require_relative './config/environment'

def reload!
	load_all './lib'
end

task :console do
	Pry.start
end

task :scrape_rooms do
	# instantiate a scraper, and then have it find new rooms
	slc_scraper = RoomScraper.new('https://saltlakecity.craigslist.org/search/roo').call
	#slc_scraper.call
	# after this method call, I should be able to say Room.all and have rooms there
end