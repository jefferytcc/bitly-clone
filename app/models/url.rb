

class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	before_create :shorten, :counter
    validates :longUrl, :presence => true, :format => URI::regexp(%w(http https))
    

	def shorten
		range_alpha = [*"A".."Z",*"a".."z"]
		range_int = [*"0".."9"]
		short_url = (0...3).map{ range_alpha.sample }.join 
		short_url2 = (0...4).map{range_int.sample}.join
		@shortUrl=  short_url + short_url2
		self.shortUrl = @shortUrl
	end

	def counter
		self.clickCount = 0
	end
end