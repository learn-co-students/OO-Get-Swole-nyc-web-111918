require 'pry'

# Get a list of all gyms
  # self.all
# Get a list of all memberships at a specific gym
  #membershp def
# Get a list of all the lifters that have a membership to a specific gym
  #lifters_at_gym
# Get a list of the names of all lifters that have a membership to that gym
  #lifter names def
# Get the combined lift_total of every lifter has a membership to that gym
  #max swell bro  def


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

  def lifters_at_gym
    lifters = []
    self.memberships.each do |membership| #membership instance in an array
      # binding.pry
      lifters << membership.lifter
    end
    lifters
  end

  def list_of_names
    lifters = []
    self.memberships.each do |membership| #membership instance in an array
      # binding.pry
      lifters << membership.lifter.name
    end
    lifters
  end

  def max_swell_bro
    total_lift = []
    self.memberships.each do |membership| #lifter instace
      total_lift << membership.lifter.lift_total
    end
    # binding.pry
    total_lift.reduce{|sum, lifts| sum + lifts}
  end


end
