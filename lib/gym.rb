class Gym
 ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self

  end

  def self.all
    ALL
  end

  def memberships
    #Access all memberships => [Memberships]
    #determine wheter or not the membership belongs to this gym (self)
    Membership.all.select do |m|
      m.gym == self
    end
  end

  def lifters
    self.memberships.map do |m|
      m.lifter
    end
  end

  def names
    lifters.map do |l|
      l.name
    end
  end

  def lift_total
    lift_total = 0
    lifters.each do |l|
      lift_total += l.lift_total
    end
    lift_total
  end

end
