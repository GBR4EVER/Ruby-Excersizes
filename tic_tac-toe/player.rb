require "pry"

# class Player
#   attr_accessor :name
#
#   def initialize(marker)
#     @name = marker
#   end
#
#  #   def player_select
#  #     print "Player 1 X or 0"
#  #     marker = gets.chomp.to_s
#  #     @name = Player.new(marker)
#  #
#  #     print "Player 2 enter your name"
#  #     marker = gets.chomp.to_s
#  #     @name = Player.new(marker)
#  # end
# end
#
#
# binding .pry
# #    def player_marker(marker)
# #      if (marker == 1)
# #        return "X"
# #      else
# #        return "O"
# #    end
# #  end
# # end
#-----------------------------------------------------------------------------------------------
class Player
  attr_accessor :name 

  def initialize(n)
    @name = n
  end
  
end

binding.pry