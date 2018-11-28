class Membership
  
  attr_reader :cost, :lifter, :gym

  # [x] Get a list of all memberships
  ALL = []

  def self.all
    ALL
  end

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    ALL << self
  end

end # end of Membership class
