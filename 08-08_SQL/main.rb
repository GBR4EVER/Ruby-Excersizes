# Using SQL with Sinatra
require "pry"

require "sinatra"
require "sinatra/reloader"

# Must require SQL so it may recognize our ToDo database.
require "sqlite3"

require_relative "./Todo.rb"

get "/" do
  @all_todos = Todo.all
  erb :home
end


binding.pry