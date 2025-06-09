require_relative 'player'
require_relative 'input_handler'

class Game
  def initialize
    @input = InputHandler.new
    @player = nil
  end

  def start
    puts "Welcome to the Adventure Game!"
    name = @input.get("What is your name, adventurer?")
    @player = Player.new(name)
    puts "Greetings, #{@player.name}! Let’s begin your quest."
    main_loop
  end

  def main_loop
    while @player.alive?
      choice = @input.get("You encounter a wild beast. Do you FIGHT or RUN?")
      case choice.downcase
      when 'fight'
        puts "You fought bravely!"
        @player.take_damage(rand(5..20))
      when 'run'
        puts "You ran away safely!"
      else
        puts "I don't understand that command."
      end

      puts "Your current health: #{@player.health}"
    end

    puts "You have perished. Game Over!"
  end
end
