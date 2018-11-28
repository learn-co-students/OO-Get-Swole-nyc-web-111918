require_relative '../environment.rb'
require_relative '../lib/membership.rb'
require_relative '../lib/gym.rb'
require_relative '../lib/lifter.rb'

# <<<<<<< HEAD
# =======
def reload
  load '../environment.rb'
end

jordan = Lifter.new("Jordan", 1000)
michael = Lifter.new("Michael", 500)
twenty4 = Gym.new("24 Hour Fitness")
twenty5 = Gym.new("25 Hour Fitness")
twenty6 = Gym.new("26 Hour Fitness")
hole_in_pocket = Membership.new(40, jordan, twenty4)
bighole_in_pocket = Membership.new(60, michael, twenty4)

# >>>>>>> parent of 39e6e66... skfjksdf


binding.pry
 puts "amazing"
