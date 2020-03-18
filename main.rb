# As a customer,
# I want to estimate the cost of renting four bikes
#   for a week
# So that I know how much money I will need to pay

require_relative 'bmx_bike'
require_relative 'road_bike'
require_relative 'mountain_bike'
require_relative 'roll_pack'
require_relative 'pannier'
require_relative 'tail_pack'

bikes = [
  BmxBike.new(70, 20, 5, TailPack.new),
  RoadBike.new(15, [Pannier.new, Pannier.new]),
  MountainBike.new(90, 25, 10, RollPack.new),
  MountainBike.new(90, 25, 10, RollPack.new)
]

# I have no idea why this reduce doesn't work
#total_price = bikes.reduce {|total, bike| bike.total_price + total}

total_price = 0
for bike in bikes
  total_price += bike.total_price
end

puts "Total price: #{total_price}"
