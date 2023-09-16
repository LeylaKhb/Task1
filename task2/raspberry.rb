class Raspberry
  @@states = %w[absent bloom green red]

  attr_accessor :index
  protected :index

  attr_accessor :state
  protected :state

  def initialize(index)
    @index = index
    @state = @@states[0]
  end

  def grow!
    index_of_state = @@states.index @state
    if index_of_state < 3
      @state = @@states[index_of_state + 1]
    end
  end

  def ripe?
    @state == "red"
  end
end
