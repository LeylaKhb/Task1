class Human
  attr_accessor :plant
  protected :plant

  def initialize(name, plant)
    @name = name
    @plant = plant
  end

  def work!
    @plant.grow_all!
  end

  def harvest
    if @plant.ripe_all?
      @plant.give_away_all!
      p "Raspberries have been harvested"
    else
      p "Raspberries aren't ripe"
    end
  end

  def self.knowledge_base
    p "Every berry has 4 stages of maturity: absent(not planted), bloom, green, red"
  end
end

