#require "pry"
class Game
  attr_reader :turn
  attr_accessor :board :easy
  
  def initialize
    @turn = 1
    @board = { a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " " }
    @easy = easy
  end
  
   def start_game
     x = Game.new
     x.intro
     x.player_name
     x.player_turn
   end
   # ADD A METHOD FOR PLAYER TO HAVE A NAME AND TRACK WHO WINS EACH GAME AND KEEP A RECORD FOR EACH PLAYER
   # ADD A A.I. METHOD TO PLAY AGAINST
  
  def intro
    # Gives intro to the game that displays the title and board.
    puts "ULTIMATE TIC TAC TOE .. in ruby!\n"
    display_board
  end
  
  def player_name
    # Assigns player name to p1 and p2 as well as their corresponding marker.
    puts "Player 1, please enter your name.\n"
    player1 = gets.chomp.capitalize
    puts "Welcome #{player1}, you are marker 'X'.\n"
    @p1 = "X"
    
    puts "Player 2, please enter your name.\n"
    player2 = gets.chomp.capitalize
    puts "Welcome #{player2}, you are marker 'O'.\n"
    @p2 = "O"
  end
  
  # def player_symbol
  #   # Determines Player 1s and Player 2s marker or symbol.
  #   puts "Player 1, choose your marker, X or O?\n"
  #   i = gets.chomp.upcase
  #   if i == "X"
  #     puts "Player 1 is X!"
  #     puts "Player 2 is O!"
  #     @p1 = "X"
  #     @p2 = "O"
  #   elsif i == "O"
  #     puts "Player 1 is 0!"
  #     puts "Player 2 is X!"
  #     @p1 = "O"
  #     @p2 = "X"
  #   else
  #     puts "That is not a valid player! Re-enter X or O!"
  #     player_symbol
  #   end
  # end

  def player_turn
    # Determine player turn.
    # Pass to player_move.
    if @turn == 1
      puts "Player 1 it is your turn."
      @turn = 2
      player_move(@p1)
    else
      puts "Player 2 it is your turn."
      @turn = 1
      player_move(@easy)
    end
  end

  def display_board
    # Displays board grid using hash values.
    puts "   1   2   3 "
    puts "A  #{@board[:a1]} | #{@board[:a2]} | #{@board[:a3]} "
    puts "  ---+---+---"
    puts "B  #{@board[:b1]} | #{@board[:b2]} | #{@board[:b3]} "
    puts "  ---+---+---"
    puts "C  #{@board[:c1]} | #{@board[:c2]} | #{@board[:c3]} "
  end

  
  def player_move(n)
    # Player picks square to claim.
    # Player symbol populates hash.
    puts "Pick move #{n}"
    x = gets.chomp.downcase.to_sym
    if x == :a1 || x == :a2 || x == :a3 || 
       x == :b1 || x == :b2 || x == :b3 || 
       x == :c1 || x == :c2 || x == :c3
      @board[x] = "#{n}" # Sets board space to @p1 or @p2
      display_board
      check_board
    else
      puts "That is not a valid option!"
      puts "Please try again!"
      player_move(n)
    end
  end
  
  def check_board
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
    puts "Do you want to play again? Y or N?"
    i = gets.chomp.upcase
    if i == "Y"
      start_game
    elsif i == "N"
      puts "Goodbye"
    end
    elsif ((@board[:a1] == @p2) && (@board[:a2] == @p2) && (@board[:a3] == @p2)) ||
      ((@board[:b1] == @p2) && (@board[:b2] == @p2) && (@board[:b3] == @p2)) ||
      ((@board[:c1] == @p2) && (@board[:c2] == @p2) && (@board[:c3] == @p2)) ||
      ((@board[:a1] == @p2) && (@board[:b1] == @p2) && (@board[:b1] == @p2)) ||
      ((@board[:a2] == @p2) && (@board[:b2] == @p2) && (@board[:c2] == @p2)) ||
      ((@board[:a3] == @p2) && (@board[:b3] == @p2) && (@board[:c3] == @p2)) ||
      ((@board[:a1] == @p2) && (@board[:b2] == @p2) && (@board[:c3] == @p2)) ||
      ((@board[:a3] == @p2) && (@board[:b2] == @p2) && (@board[:c1] == @p2))
      puts "Player #{@p2} is the winner!"
      puts "Do you want to play again? Y or N?"
      i = gets.chomp.upcase
      if i == "Y"
        start_game
      elsif i == "N"
        puts "Goodbye"
      end
   elsif (@board[:a1] == @p1 || @board[:a1] == @p2) &&
      (@board[:a2] == @p1 || @board[:a2] == @p2) &&
     (@board[:a3] == @p1 || @board[:a3] == @p2) &&
     (@board[:b1] == @p1 || @board[:b1] == @p2) &&
     (@board[:b2] == @p1 || @board[:b2] == @p2) &&
     (@board[:b3] == @p1 || @board[:b3] == @p2) &&
     (@board[:c1] == @p1 || @board[:c1] == @p2) &&
     (@board[:c2] == @p1 || @board[:c2] == @p2) &&
     (@board[:c3] == @p1 || @board[:c3] == @p2)
     puts "Tie Game"
     puts "Do you want to play again? Y or N?"
     i = gets.chomp.upcase
     if i == "Y"
       start_game
     elsif i == "N"
       puts "Goodbye"
     end
    else
      player_turn
   end
 end
      
  
end

#binding.pry


