require_relative '../environment.rb'

# <<<<<<< HEAD
#
# =======
def reload
  load 'environment.rb'
end

jordan = Lifter.new("Jordan", 150)
thao = Lifter.new("Thao", 500)
jenny = Lifter.new("Jenny", 400)

twenty4 = Gym.new("24 Hour Fitness")
crunch = Gym.new("Crunch Fitness")
equinox = Gym.new("Equinox")

m1 = Membership.new(60, thao, crunch)
m2 = Membership.new(80, thao, equinox)
m3 = Membership.new(60, jordan, crunch)
m4 = Membership.new(50, jenny, twenty4)

hole_in_pocket = Membership.new(40, jordan, twenty4)


# >>>>>>> parent of 39e6e66... skfjksdf


binding.pry
 puts "amazing"
