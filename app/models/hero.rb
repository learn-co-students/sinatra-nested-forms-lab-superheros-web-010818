class Hero
  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(name, power, bio)
    @name = name
    @power = power
    @bio = bio
    @@all << self
  end
end
