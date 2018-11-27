
class Lifter

  attr_reader :name, :lift_total

    @@all =[]

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

  def self.average
    @@all.reduce(0) { |acc, iti| acc + iti.lift_total}/(@@all.count.to_f)
  end

  def membership_cost(gym)
    Membership.all.find { |memb| (memb.gym == gym && memb.lifter == self) }.
    cost
  end

end
