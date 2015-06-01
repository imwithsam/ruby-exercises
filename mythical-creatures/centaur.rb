class Centaur
  attr_accessor :name,
                :breed,
                :mood,
                :position,
                :cranky_count

  def initialize(name, breed, mood = :meh, position = :standing)
    self.name = name
    self.breed = breed
    self.mood = mood
    self.position = position
    self.cranky_count = 0
  end

  def shoot
    if self.cranky? || self.laying?
      "NO!"
    else
      self.cranky_count += 1
      "Twang!!!"
    end
  end

  def run
    if self.cranky? || self.laying?
      "NO!"
    else
      self.cranky_count += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    self.mood = :cranky if self.cranky_count >= 3
    self.mood == :cranky
  end

  def standing?
    self.position == :standing
  end

  def laying?
    self.position == :laying
  end

  def sleep
    if self.standing?
      "NO!"
    else
      self.cranky_count = 0
      self.mood = :meh
      "Zzzzz"
    end
  end

  def lay_down
    self.position = :laying
  end

  def stand_up
    self.position = :standing
  end
end
