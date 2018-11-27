require_relative '../environment.rb'
require 'pry'
# <<<<<<< HEAD
# =======
# def reload
#   load 'config/environment.rb'
# end
#
# jordan = Lifter.new("Jordan", 9999999)
# twenty4 = Gym.new("24 Hour Fitness")
# hole_in_pocket = Membership.new(40, jordan, twenty4)
#
#
# >>>>>>> parent of 39e6e66... skfjksdf
l1 = Lifter.new("Jordan", 9000)
l2 = Lifter.new("Corey", 9000)
l3 = Lifter.new("Bryant", 322)

g1 = Gym.new("The GYM!?")
g2 = Gym.new("That Other GYM@!?")
g3 = Gym.new("yeah!?")

m1 = Membership.new(45, l1, g1)
m2 = Membership.new(15, l1, g2)
m3 = Membership.new(45, l2, g1)

binding.pry
 puts "amazing"
