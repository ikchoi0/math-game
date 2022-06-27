require './game'
require './question'
require './player'

  
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
question = Question.new
game = Game.new
game.start(player1, player2, question)