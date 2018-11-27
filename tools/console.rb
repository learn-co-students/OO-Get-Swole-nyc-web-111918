require_relative '../config/environment.rb'
require_relative '../lib/gym.rb'
require_relative '../lib/lifter.rb'
require_relative '../lib/membership.rb'

def reload
  load 'config/environment.rb'
end

l1 = Lifter.new("Jordan", 9999999)
l2 = Lifter.new("Ben", 23409)
l3 = Lifter.new("Chris", 8)

g1 = Gym.new("24 Hour Fitness")
g2 = Gym.new("Planet Fitness")
g3 = Gym.new("Retro Fitness")

m1 = Membership.new(40, l1, g1)
m2 = Membership.new(10, l1, g2)
m3 = Membership.new(24, l2, g1)
m4 = Membership.new(24, l3, g3)
m3 = Membership.new(24, l2, g3)
m3 = Membership.new(24, l3, g2)
m3 = Membership.new(24, l3, g1)



#parent of 39e6e66... skfjksdf


binding.pry
 puts "amazing"
