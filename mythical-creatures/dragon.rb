class Dragon
  attr_accessor :name,
                :color,
                :rider,
                :hungry,
                :dinner_count

  def initialize(name, color, rider)
    self.name = name
    self.color = color
    self.rider = rider
    self.hungry = true
    self.dinner_count = 0
  end

  def hungry?
    self.hungry = false if self.dinner_count >= 3
    self.hungry
  end

  def eat
    self.dinner_count += 1
  end
end
