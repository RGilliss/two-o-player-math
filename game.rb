class Game
  def initialize(player1, player2, prompt)
    @player1 = player1
    @player2 = player2
    @prompt = prompt
  end
  attr_accessor :player1
  attr_accessor :player2
  attr_accessor :prompt
 
  def each_turn(player)
    num_one = @prompt.value
    num_two = @prompt.value
    puts @prompt.ask_question(player.name, num_one, num_two)
    solution = @prompt.solution(num_one, num_two)
    guess = gets.chomp
    answer = @prompt.answer(guess, solution, player)
    if !answer
      player.lose_life(player.lives)
    end
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

  def winner(lives)
    if lives == 0
      winner = @player2
    else
      winner = @player1
    end
  end

  def game_loop
    turn = 1
    while @player1.lives > 0 && @player2.lives > 0 do
      turn = turn + 1
      puts "-------- NEW TURN --------"
      if turn % 2 == 0
        self.each_turn(@player1)
      else
        self.each_turn(@player2)
      end
    end
    winner = winner(@player1.lives)
    @prompt.end_game(winner)
  end

end