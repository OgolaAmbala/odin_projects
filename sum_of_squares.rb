# frozen_string_literal: true

def square_sum(numbers)
  sum = 0

  numbers.each do |num|
    squares = num**2
    sum += squares
  end
  p sum
end

array = [1, 2, 2]

square_sum(array)

def sum(array)
  array.reduce(0) { |sum, num| sum + (num**num) }
end
p sum([1, 2, 2])
