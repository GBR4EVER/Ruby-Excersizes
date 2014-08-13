require "pry"

require "sinatra"
require "sinatra/reloader"

require "sinatra/activerecord"

require "sqlite3"

require_relative "./models/todo.rb"
require_relative "./models/category.rb"

get "/" do
  @all_todos = Todo.all # This is a class-method that we made.
  erb :home
end

binding.pry