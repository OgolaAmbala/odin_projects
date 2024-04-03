# frozen_string_literal: true

def bubble_sort(numbers)
  loop do
    swapped = false # Flag to indicate if any swaps were made in this pass

    # Loop through the list
    (numbers.length - 1).times do |i|
      # Compare adjacent elements and swap if necessary
      next unless numbers[i] > numbers[i + 1] # Skip if in correct order

      # Swap elements
      numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
      swapped = true # Set swapped flag to true
    end

    # If no swaps were made, the list is sorted, so we can exit the loop
    break unless swapped
  end

  # Return the sorted list
  numbers
end

array = [4, 2, 7, 1, 3]
p bubble_sort(array)
