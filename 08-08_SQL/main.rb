# Using SQL with Sinatra
require "pry"

require "sinatra"
require "sinatra/reloader"

require "sqlite3"

require_relative "./Todo.rb"

get "/" do
  @all_users = Todo.all
  erb :home
end


binding.pry