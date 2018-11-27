require_relative '../lib/membership.rb'
require_relative '../lib/gym.rb'
require_relative '../lib/lifter.rb'

# <<<<<<< HEAD
# =======
def reload
  load 'config/environment.rb'
end

jordan = Lifter.new("Jordan", 9999999)
josh = Lifter.new("Josh", 100)
jim = Lifter.new("Jim", 9789)


twenty4 = Gym.new("24 Hour Fitness")
 gym = Gym.new("24 Hour Fitness")
wowgym = Gym.new("24 Hour Fitness")



hole_in_pocket = Membership.new(40, jim, twenty4)
hole_in_pocket_two = Membership.new(50, jordan, gym)
hole_in_pocket_three = Membership.new(60, josh, gym)




# >>>>>>> parent of 39e6e66... skfjksdf


binding.pry
 puts "amazing"
