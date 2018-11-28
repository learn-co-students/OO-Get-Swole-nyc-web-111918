require 'pry'
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

  def self.avg_lift_total
    #binding.pry
    total = self.all.map {|lifter| lifter.lift_total}
    total.inject{ |sum, el| sum + el }.to_f / total.length
  end

  def membership_cost
      memberships.map do |attribute|
        attribute.cost
        #binding.pry
    end.reduce(:+)
  end

  def signup(gym, membership_cost)
    Membership.new(membership_cost, self, gym)
  end
end
