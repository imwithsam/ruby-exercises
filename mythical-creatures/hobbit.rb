class Hobbit
  attr_accessor :name,
                :disposition,
                :age

  def initialize(name, disposition = "homebody")
    self.name = name
    self.disposition = disposition
    self.age = 0
  end

  def celebrate_birthday
    self.age += 1
  end

  def adult?
    self.age >= 33
  end
end
