require 'pry'

# Get a list of all lifters
  # used @@all and shovel
# Get a list of all the memberships that a specific lifter has
  #memberships def
# Get a list of all the gyms that a specific lifter has memberships to
  #gyms def
# Get the average lift total of all lifters
  #average_lift_total def
# Get the total cost of a specific lifter's gym memberships
  #membership costs def
# Given a gym and a membership cost, sign a specific lifter up for a new gym
  #

class Lifter

  attr_reader :name, :lift_total

  @@all = []

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

  def self.average_lift_total
    total_lift = []
    Lifter.all.each do |lifter| #lifter instace
      total_lift << lifter.lift_total
    end
    # binding.pry
    total_lift.reduce{|sum, lifts| sum + lifts} / total_lift.length
  end

  def membership_costs
    costs_array = []
    self.memberships.each {|membership| costs_array << membership.cost}
    costs_array.reduce{|sum, el| sum + el}
  end

  def new_membership(cost, gym)
                #(cost, lifter, gym)
    Membership.new(cost, self, gym)
  end

end
