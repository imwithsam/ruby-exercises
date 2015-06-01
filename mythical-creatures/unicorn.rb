class Unicorn
  attr_accessor :name,
                :color

  def initialize(name, color="white")
    self.name = name
    self.color = color
  end

  def white?
    self.color == "white"
  end

  def say(saying)
    sparkles = "**;*"
    "#{sparkles} #{saying} #{sparkles}"
  end
end
