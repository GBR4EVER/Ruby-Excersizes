require "pry"

# This class will contain the actual movie API database
class database
  attr_accessor :movie
  
  # Initializes the movie object with an empty Array starting out.
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
  
end
  