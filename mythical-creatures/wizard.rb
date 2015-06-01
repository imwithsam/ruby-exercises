class Wizard
  attr_accessor :name,
                :beard

  def initialize(name, bearded: true)
    self.name = name
    self.beard = Hash.new(bearded)
  end

  def bearded?
    self.beard[:bearded]
  end

  def incantation(phrase)
    "sudo #{phrase}"
  end
end
