require_relative 'human'
require_relative 'raspberry_bush'

if __FILE__ == $PROGRAM_NAME
  plant = RaspberryBush.new(8)
  human = Human.new("David", plant)

  p "Enter your name"
  name = gets
  p "Hi, " + name.chomp + "! Now you have 8 raspberry bushes. You can: 1. Harvest raspberries " +
      "2. Work to grow bushes 3. Know your knowledge base 4. Exit"

  while (number = gets.chomp) != 4
    if number == "1"
      human.harvest
    elsif number == "2"
      human.work!
      p "Good job!"
    elsif number == "3"
      Human.knowledge_base
    else
      p "Please write number from 1 to 4"
    end
  end
end

