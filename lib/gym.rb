class Gym
 ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self

  end

  def self.all
    ALL
  end

  def memberships
    #Access all memberships => [Memberships]
    #determine wheter or not the membership belongs to this gym (self)
    Membership.all.select do |m|
      m.gym == self
    end
  end

  def lifters #specific is the key word. It is one gym
    #this is a list of all lifters
    #that have a membership to a specific gym.
    #gymX look through all your members
    #map each membership_inst
    #create an array of lifters from the membership array.
    self.memberships.map { |membership_inst| membership_inst.lifter }
  end

  def list_of_lifter_names
    lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift_total
    #use the lifters method
    #look through all the lifters array.
    #create a varibale to hold the lift total.
    #for each lifter instance,
    #reassign the lift total to a new lift total by adding it.
    combined_lift_total = 0
    lifters.each do |lifter|
      combined_lift_total += lifter.lift_total
    end
    combined_lift_total
  end


end #end of Gym class
