class Pirate
  attr_accessor :name,
                :job,
                :cursed,
                :heinous_acts_count

  def initialize(name, job = "Scallywag")
    self.name = name
    self.job = job
    self.cursed = false
    self.heinous_acts_count = 0
  end

  def cursed?
    self.cursed = true if self.heinous_acts_count >= 3
    self.cursed
  end

  def commit_heinous_act
    self.heinous_acts_count += 1
  end
end
