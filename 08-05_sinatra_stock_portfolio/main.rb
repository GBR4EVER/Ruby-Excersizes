require "pry"

require "sinatra"
require"sinatra/reloader"

require_relative "portfolio.rb"
require_relative "stock.rb"

get "/" do
  if $portfolio.nil
  $portfolio = Portfolio.new
end
  erb :home
end

get "/add_stock" do
  erb :add_stock
end
  
post "/save_stock" do
  # 1. Get the info from the form.
  company = params["comapny"]
  symbol = params["symbol"]
  price_per_share = params["price_per_share"].to_i
  currency = params["currency"]
  quantity = params["quantity"].to_i
  
  # 2. Make a new stock object from that info.
  s = Stock.new(company, symbol, price_per_share, currency, quantity)
  
  # 3. Add that stock to the $portfolio.
  $portfolio.add_stock(s)
  
  binding.pry
  
  # 4. Show the updates portfolio table.
  erb :home
end
