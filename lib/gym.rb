class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  #Gets a list of all lifters that have a membership to a specific gym
  def all_lifters
      self.memberships.map do |membership|
        membership.lifter
      end
  end

  #helper method (our joiner)(this gets us all memberships at a specific gym)
  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  #Gets a list of the names of all the lifters that have a membership
  #to that gym
  def all_lifter_names
    self.all_lifters.map do |elements|
      elements.name
    end
  end

  #Gets the combined lift total of every lifter at a specific gym
  def average_lift_total
    lifts = self.all_lifters.reduce(0) { |acc, inst| acc + inst.lift_total}
    lifts.to_f / self.all_lifters.length
  end

end
