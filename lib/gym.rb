class Gym
  @@all = []
  attr_reader :name



  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def memberships
    #Access all memberships => [Memberships]
    #determine wheter or not the membership belongs to this gym (self)
    Membership.all.select do |m|
      m.gym == self
    end
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end
  end

  def lifters_names
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def lift_total
    sum = 0
    lifts_bro = self.lifters.map do |lifter|
      lifter.lift_total
    end
    lifts_bro.each do |lift|
      sum += lift
    end
    sum
  end

end
