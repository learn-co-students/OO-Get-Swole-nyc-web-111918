# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
                #(name, lift_total)
mike = Lifter.new("Mike", 315)
james = Lifter.new("James", 225)
nick= Lifter.new("Nick", 135)
brian = Lifter.new("Brian", 185)

                #(name)
g1 = Gym.new("Powerhouse Gym")
g2 = Gym.new("Gold's Gym")
g3 = Gym.new("Planet Fitness")
g4 = Gym.new("Push Fitness")

                  #(cost, gym, lifter)
m1 = Membership.new(390, g1, mike)
m2 = Membership.new(375, g2, mike)
m3 = Membership.new(350, g3, nick)
m4 = Membership.new(350, g4, brian)
m5 = Membership.new(350, g4, james)
binding.pry

puts "Gains!"
