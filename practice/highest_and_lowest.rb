# frozen_string_literal: true

def high_and_low(numbers)
  array_of_strings = numbers.split
  high_number = array_of_strings.map { |str| str.to_i }.max.to_s
  low_number = array_of_strings.map { |str| str.to_i }.min.to_s

  high_number << ' ' << low_number
end
