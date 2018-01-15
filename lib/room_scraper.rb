class RoomScraper

  def initialize(index_url)
  	@index_url = index_url
  	@doc = Nokogiri::HTML(open(index_url))
  	#binding.pry
  end



  def call
  	rows.each do |row_doc|
  		Room.create_from_hash(scrape_row(row_doc))
  	end
  end

  private
    def rows
  		@rows ||= @doc.search("div.content ul.rows li.result-row p.result-info")
  	end

  	def scrape_row(row)
  		#scrape an individual row
  		car = {
	  		:date_created => row.search("time").attribute("datetime").value,
	  		:title => row.search("a.result-title.hdrlnk").text,
	  		:url => row.search("a.result-title.hdrlnk").attribute("href").text,
	  		:price => row.search(".result-price").text
  		}
  	end
end