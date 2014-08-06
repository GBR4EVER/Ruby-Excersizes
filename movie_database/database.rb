require "pry"

# This class will contain the actual movie API database
class database
  attr_accessor :movie
  
  # Initializes the Portfolio object with an empty Array of Stocks.
  def initialize
    @movie = []
  end
  
  