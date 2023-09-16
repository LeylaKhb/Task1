require_relative 'raspberry'
class RaspberryBush
  def initialize(count)
    @raspberries = []
    (1..count).each do |n|
      @raspberries.push(Raspberry.new(n))
    end
  end

  def grow_all!
    @raspberries.each do |rasp|
      rasp.grow!
    end
  end

  def ripe_all?
    @raspberries.each do |rasp|
      unless rasp.ripe?
        return false
      end
    end
    true
  end

  def give_away_all!
    @raspberries.clear
  end
end