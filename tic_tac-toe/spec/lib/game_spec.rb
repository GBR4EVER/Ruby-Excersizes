require "spec_helper"
require "game.rb"
require "board.rb"

describe Game do

  it "should check to see if of our init instances are set properly" do
    game = Game.new
    expect(game.turn).to eql(1)
  end
  
  it "should init game board as hash" do
    game = Game.new
    board = { a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " " }
    expect(board).to eql(game.board)
  end
  
  it "should give the intro of the game and display the empty board" do
    game = Game.new
    expect game.display_board.should_not == true
  end
end
