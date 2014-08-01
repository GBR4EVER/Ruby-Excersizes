
require "pry"

class Game
  attr_reader :turn
  
  def initialize
    @turn = 1
    @board = { a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " " }
    #board = { a1: "O", a2: "X", a3: "O", b1: "O", b2: "X", b3: "X", c1: "X", c2: "O", c3: "X" }
  end
  
  # def start_game
  #   x = Game.new
  #   x.player_symbol
  #   x.player_turn
  #   x.check_game
  # end
    

  def player_symbol
    puts "Pick X or O"
    i = gets.chomp.upcase 
    if i == "X"
      @p1 = "X"
      @p2 = "O"
    elsif i == "O"
      @p1 = "O"
      @p2 = "X"
    else
      puts "That is not a valid player!"
    end
  end

  def player_turn
    if @turn == 1
      puts "Player 1 turn."
      @turn = 2
      player_move(@p1)
    else
      puts "Player 2 turn."
      @turn = 1
      player_move(@p2)
    end
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

  
  def player_move(n)
    # Player picks square to claim.
    # Player symbol populates hash.
    puts "pick move"
    x = gets.chomp.to_sym
    @board[x] = "#{n}" # Directs to player x/o
    display_board
    
  end
  
  def check_game
    if ((@board[:a1] && @board[:a2] && @board[:a3]) || (@board[:b1] && @board[:b2] && @board[:b3]) ||
      (@board[:c1] && @board[:c2] && @board[:c3]) || (@board[:a1] && @board[:b1] && @board[:b1]) || 
      (@board[:a2] && @board[:b2] && @board[:c2]) || (@board[:a3] && @board[:b3] && @board[:c3]) ||
      (@board[:a1] && @board[:b2] && @board[:c3]) || (@board[:a3] && @board[:b2] && @board[:c1])) == "#{@p1}"
      puts "#{@p1} wins"
    elsif ((@board[:a1] && @board[:a2] && @board[:a3]) || (@board[:b1] && @board[:b2] && @board[:b3]) ||
      (@board[:c1] && @board[:c2] && @board[:c3]) || (@board[:a1] && @board[:b1] && @board[:b1]) || 
      (@board[:a2] && @board[:b2] && @board[:c2]) || (@board[:a3] && @board[:b3] && @board[:c3]) ||
      (@board[:a1] && @board[:b2] && @board[:c3]) || (@board[:a3] && @board[:b2] && @board[:c1])) == "#{@p2}"
      puts "#{@p2} wins"
    elsif (@board[:a1] && @board[:a2] && @board[:a3] && @board[:b1] && @board[:b2] && @board[:b3] &&
            @board[:c1] && @board[:c2] && @board[:c3] && @board[:a1] && @board[:b1] && @board[:b1] && 
            @board[:a2] && @board[:b2] && @board[:c2] && @board[:a3] && @board[:b3] && @board[:c3] &&
            @board[:a1] && @board[:b2] && @board[:c3] && @board[:a3] && @board[:b2] && @board[:c1]) == "#{@p1}" || "#{@p2}"
      puts "Tie game"     
    end
  end
      
  
end


