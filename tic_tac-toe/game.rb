#require "pry"

class Game
  attr_reader :turn
  
  def initialize
    @turn = 1
    @board = { a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " " }
  end
  
  # def start_game
  #   x = Game.new
  #   x.intro
  #   x.player_symbol
  #   x.player_turn
  #   x.check_game
  # end
  
  def intro
    puts "\t\t\t\t\t\t   ULTIMATE TIC TAC TOE .. in ruby!\n"
    display_board
    puts " "
    puts "\t\t\t Align three of your markers vertically, horizontally, or diagonally and your the winner!" 
    puts "\t\tPlace your marker on the boarby inputting the designated spot of it's letter (row) and number (column)."
    puts "\t\t\t\t\t\t               BEGIN!"
  end
  
  def player_symbol
    puts "\t\t\t\t\t\tPlayer 1, choose your marker, X or O?\n"
    i = gets.chomp.upcase 
    if i == "X"
      puts "\t\t\t\t\t\t Player 1 is X!"
      puts "\t\t\t\t\t\t Player 2 is O!"
      @p1 = "X"
      @p2 = "O"
    elsif i == "O"
      puts "\t\t\t\t\t\t Player 1 is 0!"
      puts "\t\t\t\t\t\t Player 2 is X!"
      @p1 = "O"
      @p2 = "X"
    else
      puts "\t\t\t\t\t\tThat is not a valid player! Re-enter X or O!"
      player_symbol
    end
  end

  def player_turn
    if @turn == 1
      puts "\t\t\t\t\t\t Player 1 turn."
      @turn = 2
      player_move(@p1)
    elsif
      puts "\t\t\t\t\t\t Player 2 turn."
      @turn = 1
      player_move(@p2)
    end
  end

  def display_board
    # Displays board grid using hash values.
    puts "\t\t\t\t\t\t\t     1   2   3 "
    puts "\t\t\t\t\t\t\t  A  #{@board[:a1]} | #{@board[:a2]} | #{@board[:a3]} "
    puts "\t\t\t\t\t\t\t    ---+---+---"
    puts "\t\t\t\t\t\t\t  B  #{@board[:b1]} | #{@board[:b2]} | #{@board[:b3]} "
    puts "\t\t\t\t\t\t\t    ---+---+---"
    puts "\t\t\t\t\t\t\t  C  #{@board[:c1]} | #{@board[:c2]} | #{@board[:c3]} "
  end

  
  def player_move(n)
    # Player picks square to claim.
    # Player symbol populates hash.
    puts "\t\t\t\t\t\t Pick move"
    x = gets.chomp.downcase.to_sym
    @board[x] = "#{n}" # Directs to player X/O
    display_board
    
  end
  def game_results
    # Determines winner, loser, or tie game
  if ((@board[:a1] == @p1) && (@board[:a2] == @p1) && (@board[:a3] == @p1)) ||
    ((@board[:b1] == @p1) && (@board[:b2] == @p1) && (@board[:b3] == @p1)) ||
    ((@board[:c1] == @p1) && (@board[:c2] == @p1) && (@board[:c3] == @p1)) ||
    ((@board[:a1] == @p1) && (@board[:b1] == @p1) && (@board[:c1] == @p1)) ||
    ((@board[:a2] == @p1) && (@board[:b2] == @p1) && (@board[:c2] == @p1)) ||
    ((@board[:a3] == @p1) && (@board[:b3] == @p1) && (@board[:c3] == @p1)) ||
    ((@board[:a1] == @p1) && (@board[:b2] == @p1) && (@board[:c3] == @p1)) ||
    ((@board[:a3] == @p1) && (@board[:b2] == @p1) && (@board[:c1] == @p1))
    puts "Player #{@p1} is the winner!"
   elsif ((@board[:a1] == @p2) && (@board[:a2] == @p2) && (@board[:a3] == @p2)) ||
     ((@board[:b1] == @p2) && (@board[:b2] == @p2) && (@board[:b3] == @p2)) ||
     ((@board[:c1] == @p2) && (@board[:c2] == @p2) && (@board[:c3] == @p2)) ||
     ((@board[:a1] == @p2) && (@board[:b1] == @p2) && (@board[:b1] == @p2)) ||
     ((@board[:a2] == @p2) && (@board[:b2] == @p2) && (@board[:c2] == @p2)) ||
     ((@board[:a3] == @p2) && (@board[:b3] == @p2) && (@board[:c3] == @p2)) ||
     ((@board[:a1] == @p2) && (@board[:b2] == @p2) && (@board[:c3] == @p2)) ||
     ((@board[:a3] == @p2) && (@board[:b2] == @p2) && (@board[:c1] == @p2))
     puts "Player #{@p2} is the winner!"
   elsif ((@board[:a1] == ("X" || "O")) &&
     (@board[:a2] == ("X" || "O")) &&
     (@board[:a3] == ("X" || "O")) &&
     (@board[:b1] == ("X" || "O")) &&
     (@board[:b2] == ("X" || "O")) &&
     (@board[:b3] == ("X" || "O")) &&
     (@board[:c1] == ("X" || "O")) &&
     (@board[:c2] == ("X" || "O")) &&
     (@board[:c3] == ("X" || "O")))
     puts "Tie Game"
   else
     player_turn
   end
 end
      
  
end


