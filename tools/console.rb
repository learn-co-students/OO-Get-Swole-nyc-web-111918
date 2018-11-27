require_relative '../config/environment.rb'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'
def reload
  load 'config/environment.rb'
end

jordan = Lifter.new("Jordan", 9999999)
damon = Lifter.new("Damon", 1)
twenty4 = Gym.new("24 Hour Fitness")
la = Gym.new("LA Fitness")
hole_in_pocket = Membership.new(40, jordan, twenty4)
gym = Membership.new(40, damon, la)
gym2 = Membership.new(40, damon, twenty4)





binding.pry
 puts "amazing"
