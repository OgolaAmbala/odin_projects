# frozen_string_literal: true

def bubble_sort(numbers)
  loop do
    swapped = false
    (numbers.length - 1).times do |i|
      next unless numbers[i] > numbers[i + 1]

      numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
      swapped = true
    end
    break unless swapped
  end
  numbers
end

array = [4, 3, 78, 2, 0, 2]
p bubble_sort(array)
