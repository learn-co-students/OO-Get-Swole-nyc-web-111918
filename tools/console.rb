#require_relative '../environment.rb'
require_relative '../lib/lifter.rb'
require_relative '../lib/gym.rb'
require_relative '../lib/membership.rb'
require 'pry'


#<<<<<<< HEAD
#=======
#def reload
#  load 'config/environment.rb'
#end

jordan = Lifter.new("Jordan", 9999999)
twenty4 = Gym.new("24 Hour Fitness")
hole_in_pocket = Membership.new(40, jordan, twenty4)
marty = Lifter.new("Marty", 2)


#>>>>>>> parent of 39e6e66... skfjksdf


binding.pry
 puts "amazing"
