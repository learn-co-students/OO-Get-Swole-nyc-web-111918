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
      memberships.map {|object| object.lifter}
  end

  def lifter_names
      memberships.map {|object| object.lifter.name}
  end


  def lift_total
    memberships.map {|object| object.lifter.lift_total}.reduce(:+)
  end
end
