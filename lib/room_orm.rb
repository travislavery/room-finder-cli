# class Room
#   attr_accessor :title, :date_created, :price, :url

#   def self.create_from_hash(hash)
#   	new_from_hash(hash).save
#   end

#   def self.new_from_hash(hash)
#   	room = self.new
#   	room.title = hash[:title] || hash["title"]
#   	room.date_created = hash[:date_created] || hash["date_created"]
#   	room.price = hash[:price] || hash["price"]
#   	room.url = hash[:url] || hash["url"]
#   	room
#   end

#   def self.new_from_rows(rows)
#   	rows.collect do |row|
# 		Room.new_from_hash(row)
# 	end
#   end

#   def save
#   	insert
#   end

#   def self.all
  	
#   	sql = <<-SQL
# 	  	SELECT * FROM rooms;
# 	  SQL

# 	rows = DB[:connection].execute(sql)
# 	self.new_from_rows(rows)
# 	#binding.pry

#   end

#   def self.by_price(order = "ASC")
#   	sql = <<-SQL
# 	  	SELECT * FROM rooms ORDER BY price #{order};
# 	  SQL

# 	rows = DB[:connection].execute(sql)
# 	self.new_from_rows(rows)
#   end

#   def insert
#   	sql = <<-SQL
# 	  	INSERT INTO rooms(title, date_created, price, url)
# 	  	VALUES(?, ?, ?, ?)
# 	  SQL

# 	DB[:connection].execute(sql, self.title, self.date_created, self.price, self.url)
#   end

#   def self.create_table
#   	sql = <<-SQL
#   	CREATE TABLE IF NOT EXISTS rooms(
#   	id INTEGER PRIMARY KEY, 
#   	title TEXT, 
#   	date_created DATETIME, 
#   	price TEXT, 
#   	url TEXT)
#   	SQL

#   	DB[:connection].execute(sql)
#   end
# end