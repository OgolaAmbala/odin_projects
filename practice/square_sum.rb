# frozen_string_literal: true

def square_sum(numbers)
  sum = 0

  numbers.each do |num|
    squares = num**2
    sum += squares
  end
  sum
end
