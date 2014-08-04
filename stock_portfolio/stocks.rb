# require "pry"
#
#
# class Stock
#   attr_accessor :name
#
#   def initialize(name, price, share)
#     @name = name
#     @price = price
#     @share = share
#   end
#
#
#   def new_com(i, z) #
#     i = Stock.new(i)
#     z = Stock.new(z)
#   end
# end
#
# binding.pry

require "pry"
 
class Portfolio
  attr_reader :con
# Initializes new Portfolio with Array.
#
  def initialize
    @port = []
    @all_totals = 0
  end
# Creates a new Company and adds to Array.
#
# x- Name of the Company.
# y - Price of the Company's stock.
# z - Abbreviation of stock's currency.
# a - How many shares of Company's stock.
#
  def new_com(x, y, z, a)
    x = Company.new(x, y, z, a)
    @port << x
  end
# Calculates total of all stocks in Portfolio.
#
  def port_total
    @port.each do |x|
      @all_totals += x.total_con
    end
  end
# Displays each company currently in Portfolio.
#
  def display_port
    @port.each do |x|
      puts "Company: #{x.name}"
      puts "Shares: #{x.shares}"
      puts "Price: #{x.price}#{x.currency}"
      puts "To USD: $#{sprintf('%.2f', x.con)}"
      puts "Total: #{x.total}#{x.currency}"
      puts
    end
  end
# Displays total of all shares in USD.
#
  def overall_total
    puts "Portfolio Total: $#{sprintf('%.2f', @all_totals)}"
  end
# Calls methods to calculate total of whole Portfolio, displays each company and overall total of Portfolio.
#
  def display
    port_total
    display_port
    overall_total
  end
end
 
# -------------------------------------------
 
class Company
  attr_reader :name, :price, :currency, :con, :shares, :total, :total_con
# Initializes new Company with name, price, currency and conversion to USD if not USD.
#
# name - Name of the Company.
# price - Price of the Company's stock.
# currency - Abbreviation of stock's currency.
# shares - How many shares of Company's stock.
#
  def initialize(name, price, currency, shares)
    @name = name
    @price = price
    @currency = currency.upcase
    @shares = shares
    convert_curr
    shares_totals
  end
# Converts non-USD to USD
  def convert_curr
    curr = {"USD" => 1.0, "CAN" => 1.9, "CHF" => 0.91, "EUR" => 0.74, "HKD" => 7.75}
    curr.each do |key, value|
      if key == @currency
        @con = @price * value
      end
    end
  end
# Sets product of shares and con.
  def shares_totals
    @total = @shares * @price
    @total_con = @shares * @con
  end
end
 
 
 
x = Portfolio.new
x.new_com("IBM", 25, "USD", 1000)
x.new_com("Novartis", 150, "CHF", 400)
 
# i = Company.new("C", 5, "can", 30)
 
binding.pry

    
  
  
