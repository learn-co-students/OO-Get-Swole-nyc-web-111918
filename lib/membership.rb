class Membership

  ALL = []
  #
  # Get a list of all memberships

  attr_reader :cost, :lifter, :gym

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    
    ALL << self
  end

  def self.all
    ALL
  end


end
