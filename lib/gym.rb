class Gym

  attr_reader :name

  ALL = []

  # [x] Get a list of all gyms
  def self.all
    ALL
  end

  def initialize(name)
    @name = name
    ALL << self
  end

  # [x] Get a list of all memberships at a specific gym
  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  # [x] Get a list of all the lifters that have a membership to a specific gym
  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end
  end

  # [x] Get a list of the names of all lifters that have a membership to that gym
  def lifters_name
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  # [x] Get the combined lift total of every lifter has a membership to that gym
  def lift_total_list
    self.lifters.map do |lifter|
      lifter.lift_total
    end
  end

  def lifter_total_lifts
    total = 0
    lift_total_list.inject(0) {|total,lift| total+lift}
  end

end # end of Gym class




# def memberships
#   #Access all memberships => [Memberships]
#   #determine wheter or not the membership belongs to this gym (self)
#   Membership.all.select do |m|
#     m.gym == self
#   end
# end
