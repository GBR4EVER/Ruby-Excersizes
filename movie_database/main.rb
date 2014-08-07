require "pry"

require "sinatra"
require "sinatra/reloader"

require_relative "database"

Tmdb::Api.key("3249ada114189590b51785edd4580c9d")
  


binding.pry


