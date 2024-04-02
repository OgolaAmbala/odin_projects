# frozen_string_literal: true

def count_by(x, n)
  multiples = []

  i = 0
  while i < n
    num = (i + 1) * x # Increment i by 1 each iteration and calculate the multiple
    multiples << num
    i += 1 # Increment i to move to the next iteration
  end
  p multiples
end

count_by(1, 10) # should return [1,2,3,4,5,6,7,8,9,10]

# def count_by(x, n)
#   (1..n).map{ |i| i * x }
# end
