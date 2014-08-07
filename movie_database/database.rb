require "pry"

# This class will contain the actual movie API database
class database
  attr_accessor :movie
  
  # Initializes the Portfolio object with an empty Array of Stocks.
  def initialize
    @movie = []
  end
  
  # Adds a new movie to the @movie Array.
  #
  # movie - The Movie object to be added.
  #
  # Returns the new @movie Array.
  def add_movie(movie)
    @movie << movie
  end
  
  # Returns the total Integer value of all Stocks.
  # def value
  #   v = 0
  #
  #   @stocks.each do |s|
  #     v += s.total_value_usd
  #   end
  #
  #   return v
  # end
end
  