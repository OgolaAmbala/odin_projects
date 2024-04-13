# frozen_string_literal: true

class Vehicle
  attr_accessor :model, :color, :year

  def initialize(model, color, year)
    @model = model
    @color = color
    @year = year
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "Accelerate to #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "Press the brake and reduce your speed to #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed}mph."
  end
end

def self.mileage(litres, miles)
  puts "#{miles / litres} miles per litre of petrol"
end

class MyCar < Vehicle
  def shut_down
    @current_speed = 0
    puts 'Park the car'
  end

  def spray_paint(color)
    self.color = color
    puts "The new #{color} looks great on your car"
  end
end

benz = MyCar.new('Mercedes E Class', 'Tanzanite Blue', 2006)
benz.speed_up(20)
benz.current_speed
benz.speed_up(30)
benz.current_speed
benz.brake(10)
benz.current_speed
benz.shut_down
benz.current_speed
puts benz.color
puts benz.year
benz.spray_paint('gold')
