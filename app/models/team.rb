class Team
  attr_accessor :name, :motto, :members
  @@all = []

  def initialize(name, motto)
    @@all << self
    @members = []
    @name = name
    @motto = motto
  end

  def add_hero(hero)
    @members << hero
  end

  def self.all
    @@all
  end
end
