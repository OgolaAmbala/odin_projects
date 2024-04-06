# frozen_string_literal: true

def rental_car_cost(d)
  daily_cost = 40
  seven_day_discount = 50
  three_day_discount = 20
  basic_cost = d * daily_cost

  if d >= 7
    basic_cost - seven_day_discount
  elsif d >= 3
    basic_cost - three_day_discount
  else
    basic_cost
  end
end
