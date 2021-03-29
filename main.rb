require './dialogue.rb'
require './player.rb'
require './game.rb'
player1 = Player.new(3, "Player1")
player2 = Player.new(3, "Player2")
prompt = Dialogue.new
game = Game.new(player1, player2, prompt)
game.game_loop