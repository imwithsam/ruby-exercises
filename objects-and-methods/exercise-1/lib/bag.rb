class Bag
  attr_accessor :candies

  def initialize
    self.candies = []
  end

  def empty?
    self.count < 1
  end

  def count
    self.candies.count
  end

  def <<(candy)
    self.candies << candy
  end

  def contains?(candy_type)
    candies.any? do |candy|
      candy.type == candy_type
    end
  end
end
