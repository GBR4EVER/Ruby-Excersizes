# Using SQL and Ruby with Sinatra.
require "pry"

require "sinatra"
require "sinatra/reloader"

require "sqlite3"

require_relative "./user.rb"

get "/" do
  @all_users = User.all # This is a class-method that we made.
  erb :home
end
