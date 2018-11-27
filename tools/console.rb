require_relative '../environment.rb'
require_relative '../lib/gym.rb'
require_relative '../lib/lifter.rb'
require_relative '../lib/membership.rb'

#<<<<<<< HEAD
#=======
#def reload
#  load 'config/environment.rb'
#end

jordan = Lifter.new("Jordan", 9999999)
brotein = Lifter.new("Brotein", 2)


g1 = Gym.new("24 Hour Fitness")
g2 = Gym.new("Crunch")
g3 = Gym.new("Blink")

m1 = Membership.new(40, jordan, g1)
m2 = Membership.new(30, jordan, g2)
m3 = Membership.new(30, brotein, g2)
m4 = Membership.new(20, brotein, g3)

#>>>>>>> parent of 39e6e66... skfjksdf


binding.pry
 puts "amazing"
