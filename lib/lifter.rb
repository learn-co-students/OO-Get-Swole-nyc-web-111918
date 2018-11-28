class Lifter

  attr_reader :name, :lift_total

  ALL = []

  # [x] Get a list of all lifters
  def self.all
    ALL
  end

  # [x] Get the average lift total of all lifters
  def self.lift_total_list
    ALL.map do |lifter|
      lifter.lift_total
    end
  end

  def self.lift_total_average
    self.lift_total_list.inject {|sum, lift| sum + lift}.to_f / self.lift_total_list.size
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    ALL << self
  end

  # [x] Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  # [x] Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    self.memberships.map do |membership|
      membership.gym
    end
  end

  # [x] Get the total cost of a specific lifter's gym memberships
  def costs
    self.memberships.map do |membership|
      membership.cost
    end
  end

  def total_cost
    costs.inject(0) {|total, cost| total + cost}
  end

  # [x] Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_membership(cost, gym)
    Membership.new(400, self, gym)
  end

end # end of Lifter class





# def memberships
#   #Access membership => [memberships]
#   #Select all memberships for specific member
#   Membership.all.select do |m|
#     #compare whether or not lifter property == this lifter
#     m.lifter == self
#   end
# end

# def gyms
#   #Access the Memberships.all array
#   #Determine whether or not the memberships are mine/lifters
#   my_memberships = self.memberships
#   #create array of gyms from the memberships array
#   my_memberships.map do |m|
#     m.gym
#   end
# end
