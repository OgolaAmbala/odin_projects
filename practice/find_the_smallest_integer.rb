# frozen_string_literal: true

def find_smallest_int(arr)
  arr.min
end

array = [34, 15, 88, 2]
p find_smallest_int(array)

array2 = [34, -345, -1, 100]
p find_smallest_int(array2)
