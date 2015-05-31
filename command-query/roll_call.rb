class RollCall
  attr_accessor :names,
                :longest_name

  def initialize
    self.names = []
  end

  def longest_name
    self.names.max do |name_1, name_2|
      name_1.length <=> name_2.length
    end
  end

  def <<(name)
    self.names << name
  end
end
