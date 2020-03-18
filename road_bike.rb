require_relative 'pannier'
require_relative 'price'

class RoadBike

  include Price

  def initialize(daily_rate, panniers)
    @panniers = panniers
    @daily_rate = daily_rate
  end

  def clean
    puts "Cleaning..."
  end

  def lubricate_gears
    puts "Lubricating gears..."
  end

  def panniers
    @panniers
  end

  def daily_rate
    @daily_rate
  end

  def total_price
    @daily_rate * 7 + @panniers[0].price + @panniers[1].price
  end

end
