
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
    lift_total_array = self.all.map do |lifter|
      lifter.lift_total
    end
    lift_total_array.inject(:+).to_i / lift_total_array.size.to_f
  end

  def total_membership_costs
    total_cost = 0
    self.memberships.each do |membership|
      total_cost += membership.cost
    end
    total_cost
  end

  def create_membership (cost, gym)
    Membership.new(cost, self, gym)
  end



end
