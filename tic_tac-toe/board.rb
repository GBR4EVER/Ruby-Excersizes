require "pry"

class Board
  attr_accessor :board

  def initialize
    @board = { a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " " }
  end

  def board_layout

  end


  def display_board
    # Displays board grid using hash values.
    puts "   1   2   3 "
    puts "A  #{@board[:a1]} | #{@board[:a2]} | #{@board[:a3]} " #
    puts "  ---+---+---"
    puts "B  #{@board[:b1]} | #{@board[:b2]} | #{@board[:b3]} "
    puts "  ---+---+---"
    puts "C  #{@board[:c1]} | #{@board[:c2]} | #{@board[:c3]} "
  end

end 

#
# end