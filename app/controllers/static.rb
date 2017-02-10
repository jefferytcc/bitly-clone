get '/' do
    # let user create new short URL, display a list of shortened URLs
  @urls = Url.last(5)
  erb :"static/index"

end


post '/urls' do
 # create a new Url
  url = Url.new
  url.longUrl = params[:longUrl]
  url.shortUrl = url.shorten

  if url.save
  redirect "/"


  else
  
  @error = "That URL is invalid."
  @urls = Url.last(5)
  erb :"static/index"
  end
  end



# i.e. /q6bda
get '/:shortUrl' do
  # redirect to appropriate "long" URL
  @url = Url.find_by(shortUrl: params[:shortUrl])
  @url.clickCount += 1
  @url.save
  redirect @url.longUrl
end
