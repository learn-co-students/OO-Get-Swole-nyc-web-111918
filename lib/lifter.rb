
class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def self.all
    @@all
  end

  def self.average_lift_total
    #to get the average lift total.
    # MAP all of the lift totals, map because we are calculating somethng.
    # add them all together.
    # divide them by the number of lift totals sum of lift_total/ number of lifts.
    sum_of_lift_total = 0
    self.all.map do |lifter_instances|
      # sum of lift total now equals the sum of lift total plus the lift total
      #for each lift total.
      sum_of_lift_total += lifter_instances.lift_total
    end
    average = sum_of_lift_total.to_f / @@all.length
    average
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
    #my_memberships = self.memberships
    #create array of gyms from the memberships array
    memberships.map do |m|
      m.gym
    end
  end

  def list_of_gym_memberships
    gyms.map { |gym| gym.name}
  end


  def total_cost_of_your_memberships
    #for yourself
    #look through all of your mememberships
    #loop over each memembership instance
    total_membership_cost = 0
    #dont need self.
    memberships.each do |membership| #this is mapping over an instance of a membership.
       total_membership_cost += membership.cost
    end
    total_membership_cost
  end

  def join_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

end #end of Gym class
