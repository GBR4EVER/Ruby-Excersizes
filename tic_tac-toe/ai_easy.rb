require_relative "./game.rb"
require_relative "./board.rb"

class AI
  attr_accessor :board :easy
  
  def initialize
    @easy = easy
  end
  
  def easy_ai
    i = @easy
    if i.check_board.has_value?((@board[:a1] == @p1 ||
      (@board[:a2] == @p1 ||
     (@board[:a3] == @p1 || 
     (@board[:b1] == @p1 ||
     (@board[:b2] == @p1 || 
     (@board[:b3] == @p1 || 
     (@board[:c1] == @p1 || 
     (@board[:c2] == @p1 || 
     (@board[:c3] == @p1))
     Random.player_move
     display_board
   end




end