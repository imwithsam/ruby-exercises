class Tire
  attr_accessor :flat

  def initialize
    self.flat = false
  end

  def flat?
    self.flat
  end

  def blow_out
    self.flat = true
  end
end
