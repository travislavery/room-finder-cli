require 'bundler'
Bundler.require
require 'active_record'
require 'open-uri'

DB = {
	:connection => SQLite3::Database.new("db/rooms-development.sqlite")
	}
DB[:connection].results_as_hash = true
#binding.pry
ActiveRecord::Base.establish_connection(
	:adapter => "sqlite3",
	:database => "db/rooms-development.sqlite"
	)


require_all "lib"