require "pry"
require "./humanplayer"
require "./randomplayer"
require "./countingplayer"
require "./smartplayer"

class GuessingGame
  def initialize(player)
    @player = player
  end

  def play
    #binding.pry
    number = rand(1..100)
    guess = @player.get_guess(number)
    result = nil
    count = 1
    until guess == number
      if guess > number
        puts "Too High!"
        result = :high
      else
        puts "Too Low!"
        result = :low
      end
      guess = @player.get_guess(number)
      count += 1
    end
    puts "You win! Took #{count} tries. The number was #{number}."
  end
end


game = GuessingGame.new(SmartPlayer.new)
game.play


