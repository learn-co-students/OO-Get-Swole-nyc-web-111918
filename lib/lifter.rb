
class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def memberships
    #Access membership => [memberships]
    #Select all memberships for specific member
    Membership.all.select do |m|
      #compare whether or not lifter property == this lifter
      m.lifter == self
    end

  end


  def gyms
    #Access the Memberships.all array
    #Determine whether or not the memberships are mine/lifters
    my_memberships = self.memberships
    #create array of gyms from the memberships array
    my_memberships.map do |m|
      m.gym
    end
  end

  def self.average_lift_total
    lift_totals = self.all.map do |lifter|
      lifter.lift_total
    end
    total = 0
    lift_totals.each do |lift_total|
      total += lift_total
    end
    total.to_f / lift_totals.length
  end

  def total_cost
    mem_costs = self.memberships.map do |membership|
      membership.cost
    end
    total_cost = 0
    mem_costs.each do |cost|
      total_cost += cost
    end
    total_cost
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end
