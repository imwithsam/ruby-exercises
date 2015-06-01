class Person
  attr_accessor :name,
                :stoned

  def initialize(name)
    self.name = name
    self.stoned = false
  end

  def stoned?
    self.stoned
  end
end

class Medusa < Person
  attr_accessor :statues

  def initialize(name)
    self.name = name
    self.statues = []
  end

  def stare(victim)
    victim.stoned = true
    statues.push(victim)
  end
end


