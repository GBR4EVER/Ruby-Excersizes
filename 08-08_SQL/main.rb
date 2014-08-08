# Using SQL with Sinatra
require "pry"

require "sinatra"
require "sinatra/reloader"

require "sqlite3"

db = SQLite3::Database.new "facebook.db"

binding.pry