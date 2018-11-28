# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

jordan = Lifter.new("Jordan", 100)
matt = Lifter.new("Matt", 150)
twenty4 = Gym.new("24 Hour Fitness")
gm2 = Gym.new("OOOO YEAAAHHH!!")
m1 = Membership.new(40, jordan, twenty4)
m2 = Membership.new(80, jordan, gm2)
m3 = Membership.new(30, matt, gm2)



binding.pry
puts "Gains!"
puts "amazing"
