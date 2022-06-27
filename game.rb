class Game
  attr_accessor :current_player, :game_status
  def start(player1, player2, question)
    self.current_player = player1
    self.game_status = "----- New Game -----"
    while (player1.life > 0 && player2.life > 0)
      puts self.game_status
      print "#{self.current_player.name}:  "
      puts "#{question.create()}"
      print "> "
      user_input = gets.chomp
      if (user_input.to_i == question.answer)
        puts "#{self.current_player.name}: Yes! You are correct!"
      else
        self.current_player.deduct
        puts "#{self.current_player.name}: Serious? No!"
      end
      puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
      self.game_status = "----- NEW TURN -----"
      self.current_player = self.current_player == player1 ?  player2 : player1
    end
    self.game_status = "----- GAME OVER -----"
    puts self.game_status
    puts "Good bye!"
  end
end