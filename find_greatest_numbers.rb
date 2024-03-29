# frozen_string_literal: true

def find_greatest(numbers)
  saved_number = numbers[0]

  numbers.each do |num|
    next if saved_number >= num

    saved_number = num
  end
  p saved_number
end

arr = [17, 3, 6, 9, 15, 8, 6, 1, 10]

find_greatest(arr)
