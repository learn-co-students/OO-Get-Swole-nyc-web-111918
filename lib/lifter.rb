class Lifter
  attr_reader :name, :lift_total
        #Class method variable
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

      #Shovel in all lifters, and lift totals
    @@all << self
  end

    #The class method for all lifters
    def self.all
      @@all
    end

    #Gets a list of all gyms that a specific lifter has
    def all_gyms
        self.memberships.map do |membership|
          membership.gym
        end
    end

      #helper method (our joiner)
    #(this gets us a list of all the memberships that a specific lifter has)
    def memberships
      Membership.all.select do |membership|
        membership.lifter == self
      end
    end

    #Gets the average lift total of every lifter
    def self.average_lift_total
      # counter = 0
      # self.all.each {|element| counter += element.lift_total}
      # counter.to_f / self.all.length
      lifts = self.all.reduce(0) { |acc, ele| acc + ele.lift_total}
      lifts.to_f / self.all.length
    end

    #Gets a specific members total membership costs
    def total_cost
      self.memberships.reduce(0) {|acc, inst| acc + inst.cost}
    end

    #Signs a specific lifter to a new gym
    def new_gym(cost, gym)
      Membership.new(cost, gym, self)
    end

end
