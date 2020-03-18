require_relative 'roll_pack'
require_relative 'price'

class MountainBike

  include Price

  def initialize(weekly_rate, daily_rate, hourly_rate, luggage)
    @luggage = luggage
    @weekly_rate = weekly_rate
    @daily_rate = daily_rate
    @hourly_rate = hourly_rate
  end

  def clean
    puts "Cleaning..."
  end

  def adjust_suspension
    puts "Adjusting suspension..."
  end

  def luggage
    @luggage
  end

  def weekly_rate
    @weekly_rate
  end

  def daily_rate
    @daily_rate
  end

  def hourly_rate
    @hourly_rate
  end

  def total_price
    @weekly_rate + @luggage.price
  end

end
