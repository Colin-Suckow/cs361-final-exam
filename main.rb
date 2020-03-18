# As a customer,
# I want to estimate the cost of renting four bikes
#   for a week
# So that I know how much money I will need to pay

require_relative 'bmx_bike'
require_relative 'road_bike'
require_relative 'mountain_bike'
require_relative 'roll_pack'

bikes = [
  BmxBike.new,
  RoadBike.new(15, [Pannier.new, Pannier.new]),
  MountainBike.new(90, 25, 10, RollPack.new),
  MountainBike.new(90, 25, 10, RollPack.new)
]

#total_price = bikes.reduce {|total, bike| bike.total_price + total}

total_price = 0
for bike in bikes
  total_price += bike.total_price
end

puts "Total price: #{total_price}"
