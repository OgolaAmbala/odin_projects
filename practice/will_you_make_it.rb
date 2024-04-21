# frozen_string_literal: true

def zero_fuel(distance, mpg, fuel_left)
  mpg * fuel_left >= distance
end

p zero_fuel(50, 25, 2)
p zero_fuel(1450, 25, 2)
p zero_fuel(60, 25, 2)
