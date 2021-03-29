require './player.rb'
class Dialogue

  def value
    num = rand(1...10)
  end

  def ask_question(player, num_one, num_two)
    puts "#{player}: What does #{num_one} plus #{num_two} equal?"
  end

  def answer(guess, solution, player)
    if guess.to_i == solution.to_i
      puts "YES! You are correct."
      return true
    end
    if guess.to_i != solution.to_i
      puts "Seriously? No!"
      return false
    end
  end

  def solution(num_one, num_two)
    solution = num_one.to_i + num_two.to_i
  end

  def end_game(player)
    puts "#{player.name} wins with a score of #{player.lives}/3\n-------- GAME OVER --------\nGood bye!"
  end
end