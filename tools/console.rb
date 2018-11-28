require 'pry'

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# Gym
g1 = Gym.new("Crunch")
g2 = Gym.new("Blink")
g3 = Gym.new("Ultimate")

# Lifter
l1 = Lifter.new("John", 999999)
l2 = Lifter.new("Ericsson", 300)
l3 = Lifter.new("Sam", 4444)
l4 = Lifter.new("Luke", 666)

# Membership          # cost, lifter, gym
m1 = Membership.new(200, l1, g1)
m2 = Membership.new(300, l2, g2)
m3 = Membership.new(600, l3, g3)
m4 = Membership.new(600, l4, g3)
m5 = Membership.new(300, l1, g2)


binding.pry

puts "Gains!"
