require "spec_helper"
require "game"
require "board"

describe Game do

  it "should check to see if turn is equal to 1 integer." do
    i = Game.new(1)
    expect(i.player_turn).to eql(1)
  end
end
