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
    Membership.all.select { |m| m.gym == self }
  end

  def lifters
    memberships.map {|m| m.lifter}
  end

  def lifters_names
    lifters.map { |lifter| lifter.name}
  end

  def lift_total
    lifters.map {|lifter| lifter.lift_total}.reduce(:+)
  end

end
