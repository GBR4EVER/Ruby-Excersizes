require "pry"

require "sinatra"
require "sinatra/reloader"

require "themoviedb"

Tmdb::Api.key("3249ada114189590b51785edd4580c9d")

get "/" do
  @now_playing = Tmdb::Movie.now_playing

  erb :home
end

get "/search" do
 @search = Tmdb::Search.new
 @search.resource("movie")
 @search.query(params["query"])
 @results = @search.fetch
 
 erb :results
end

get "/movieid/:movieid" do
  @movie = Tmdb::Movie.detail(params[:movieid])

  

  erb :movieid
end


