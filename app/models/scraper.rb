class Scraper
	def self.scrape
		data = HTTParty.get('http://www.brainyquote.com/quotes/authors/c/confucius.html')
		
		response_body = data.response.body

		doc = Nokogiri::HTML(
			response_body  #insert content here
			)

		quotes = []

		doc.css('.bqQuoteLink').each do |link|
		quotes << link.content    #for each of the link.content, shove it into the quotes defined above
		end

		quotes.sample    #return varlues (i.e. 1 + 2 => 3, 3 is return value), can access outside from other code
	end
end