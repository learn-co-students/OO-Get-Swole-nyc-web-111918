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

  def lifter_names
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def lift_total
    self.lifters.reduce(0) do |memo, obj|
      memo + obj.lift_total
    end
  end


end
