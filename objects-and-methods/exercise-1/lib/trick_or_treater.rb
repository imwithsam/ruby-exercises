class TrickOrTreater
  attr_accessor :costume,
                :bag

  def initialize(costume)
    self.costume = costume
    self.bag = Bag.new
  end

  def dressed_up_as
    self.costume.style
  end

  def has_candy?
    !self.bag.empty?
  end

  def candy_count
    self.bag.count
  end

  def eat
    # Assuming LIFO candy eating technique
    self.bag.candies.pop
  end
end
