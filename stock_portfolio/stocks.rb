require "pry"


class Company
  attr_accessor :name
  
  def initialize(name, price, share)
    @name = name
    @price = price
    @share = share
  end
  
  
  def new_com(i) #
    i = Company.new(i)
  end
end

binding.pry

    
  
  
