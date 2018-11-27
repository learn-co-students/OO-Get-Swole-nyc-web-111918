#require_relative '../config/environment.rb'
require_relative '../lib/gym.rb'
require_relative '../lib/lifter.rb'
require_relative '../lib/membership.rb'
require'pry'

def reload
  load 'config/environment.rb'
end

jordan = Lifter.new("Jordan", 9999999)
twenty4 = Gym.new("24 Hour Fitness")
gm2 = Gym.new("OOOO YEAAAHHH!!")
hole_in_pocket = Membership.new(40, jordan, twenty4)
hole_in_pocket = Membership.new(80, jordan, gm2)




binding.pry
 puts "amazing"
