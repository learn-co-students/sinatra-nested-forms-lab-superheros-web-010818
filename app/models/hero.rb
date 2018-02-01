class Hero
  attr_accessor :name, :power, :biography, :team
  @@all = []

  def initialize(name, power, biography, team)
    @name = name
    @power = power
    @biography = biography
    @team = team
    team.add_hero(self)
    @@all << self
  end

  def self.all
    @@all
  end
end
