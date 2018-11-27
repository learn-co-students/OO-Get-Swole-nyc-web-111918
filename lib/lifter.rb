
class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total


    @@all << self
  end


  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |m|
      m.lifter == self
    end
  end

  def gyms
    self.memberships.map do |m|
      m.gym
    end
  end

  def self.average_lift_total
    sum = 0
    lifts = self.all.map do |lift|
      lift.lift_total
    end
    lifts.each do |total|
      sum += total
    end
    sum/self.all.length
  end

  def total_cost
    sum = 0
    #goes through memberships that our lifter has
    costs = self.memberships.map do |membership|
      membership.cost
    end
    costs.each do |cost|
      sum += cost
    end
    sum

    #pulls cost from memberships
    #adds up cost of all memberships

  end


end
