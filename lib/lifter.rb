
class Lifter
  #
  # Get a list of all lifters

  ALL = []

  def self.all
    ALL
  end

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    ALL << self
  end

  # Get a list of all the memberships that a specific lifter has

  def memberships
    #Access membership => [memberships]
    #Select all memberships for specific member
    Membership.all.select do |m|
      #compare whether or not lifter property == this lifter
      m.lifter == self
    end

  end
  #
  # Get a list of all the gyms that a specific lifter has memberships to

  def gyms
    #Access the Memberships.all array
    #Determine whether or not the memberships are mine/lifters
    my_memberships = self.memberships
    #create array of gyms from the memberships array
    my_memberships.map do |m|
      m.gym
    end
  end

  def self.average_lift
    total = self.all.reduce(0) {|memo, obj| memo + obj.lift_total}.to_f
    total/self.all.count
  end

  def total_cost
    self.memberships.reduce(0) {|memo,obj| memo + obj.cost}
  end

  def sign_lifter_to(gym, membership_cost)
    Membership.new(membership_cost, self, gym)
  end

end
