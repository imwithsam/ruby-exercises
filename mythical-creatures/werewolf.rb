class Werewolf
  attr_accessor :name,
                :location,
                :human

  def initialize(name, location = "London")
    self.name = name
    self.location = location
    self.human = true
  end

  def human?
    self.human
  end

  def werewolf?
    !self.human
  end

  def change!
    self.human = !self.human
  end
end
