require_relative 'human'
require_relative 'raspberry_bush'

if __FILE__ == $PROGRAM_NAME
  Human.knowledge_base
  plant = RaspberryBush.new(8)
  human = Human.new("David", plant)

  human.work!
  human.work!
  human.harvest
  human.work!
  human.harvest
end

