
class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def self.all
    @@all
  end

  def self.average_lift
    all_lift_total.reduce(:+) / all_lift_total.count
  end

  def self.all_lift_total
    all.map {|lifter| lifter.lift_total}
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self

  end

  def memberships
    Membership.all.select { |m| m.lifter == self }
  end

  def gyms
    memberships.map { |m| m.gym }
  end


  def total_memebership_cost
    memberships.map {|m| m.cost}.reduce(:+)
  end

  def new_memebership(cost, gym)
    Membership.new(cost, self, gym)
  end

end
