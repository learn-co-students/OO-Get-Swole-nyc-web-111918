class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @lifter = lifter
    @gym = gym

      #Gets a list of all memberships
    @@all << self
  end

    #Class methoad for all memberships
  def self.all
    @@all
  end

end
