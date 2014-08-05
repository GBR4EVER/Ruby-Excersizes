require "pry"

require "sinatra"
require"sinatra/reloader"

require_relative "portfolio.rb"
require_relative "stock.rb"

get "/" do
  @portfolio = Portfolio.new
  
  erb :home
end
