
 require "pry"


class Game
  
  def player_symbol
    puts "Pick X or O"
    i = gets.chomp.upcase 
    if i == "X"
      @p1 = Player.new("X")
      @p2 = Player.new("O")
    elsif i == "O"
      @p1 = Player.new("O")
      @p2 = Player.new("X")
    else
      puts "That is not a valid player!"
    end
  end

  def player_turn
    if @turn == p1
      puts "Player 1 turn."
      @turn = p2
    else
      puts "Player 2 turn."
      @turn = p1
  end

  def display_board
    # Displays board grid using hash values.
    board = { a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " " }
    puts "   1   2   3 "
    puts "A  #{board[:a1]} | #{board[:a2]} | #{board[:a3]} " #
    puts "  ---+---+---"
    puts "B  #{board[:b1]} | #{board[:b2]} | #{board[:b3]} "
    puts "  ---+---+---"
    puts "C  #{board[:c1]} | #{board[:c2]} | #{board[:c3]} "
  end

  
  def player_move
    # Player picks square to claim.
    # Player symbol populates hash.
    puts "pick move"
    x = gets.chomp.to_sym
    @board[x] = player_symbol # Directs to player x/o
    
  end
  
#
# end
#
#
 binding.pry