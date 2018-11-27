require_relative '../environment.rb'

# <<<<<<< HEAD
# =======
def reload
  load 'config/environment.rb'
end

# jordan = Lifter.new("Jordan", 9999999)
# twenty4 = Gym.new("24 Hour Fitness")


l1 = Lifter.new("mahmoud", 200)
l2 = Lifter.new("Thao", 250)
l3 = Lifter.new("Matt", 390)
l4 = Lifter.new("Rachel", 280)
l5 = Lifter.new("Michael", 500)


g1 = Gym.new("NYSC")
g2 = Gym.new("PlanetFitness")
g3 = Gym.new("24hrs")
g4 = Gym.new("Circles")

m1 = Membership.new(60, l3, g4)
m2 = Membership.new(90, l2, g1)
m3 = Membership.new(30, l1, g1)
m4 = Membership.new(10, l3, g2)
m5 = Membership.new(80, l4, g4)

#hole_in_pocket = Membership.new(40, jordan, twenty4)


# >>>>>>> parent of 39e6e66... skfjksdf


binding.pry
 puts "amazing"
