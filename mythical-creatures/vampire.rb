class Vampire
  attr_accessor :name,
                :pet,
                :thirsty

  def initialize(name, pet="bat")
    self.name = name
    self.pet = pet
    self.thirsty = true
  end

  def thirsty?
    self.thirsty
  end

  def drink
    self.thirsty = false
  end
end
