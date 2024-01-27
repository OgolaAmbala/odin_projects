def bubble_sort(array)
  n = array.length

  # Traverse through all array elements
  (0..n-1).each do |i|
    # Last i elements are already in place, so we don't need to check them
    (0..n-i-1).each do |j|
      # Swap if the element found is greater than the next element
      if array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j]
      end
    end
  end

  array # Return the sorted array
end

# Example usage:
unsorted_array = [64, 34, 25, 12, 22, 11, 90]
sorted_array = bubble_sort(unsorted_array)
puts "Sorted Array: #{sorted_array}"
