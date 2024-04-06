# frozen_string_literal: true

def square_digits(num)
  sum_digits = []

  digits = num.to_s.chars.map(&:to_i)
  digits.each do |i|
    sum_digits << (i * i)
  end
  sum_digits.join.to_i
end

numbers = 9119
p square_digits(numbers)
