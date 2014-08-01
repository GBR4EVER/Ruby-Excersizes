require_relative "./game.rb"

new_game = Game.new
new_game.intro
new_game.player_symbol
new_game.player_turn # Must create loop. No user prompt after player 1 is asked and board is displayed.
new_game.game_results

