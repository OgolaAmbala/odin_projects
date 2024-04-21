# frozen_string_literal: true

def odd_or_even(array)
  # if array.sum.even?
  #   'even'
  # else
  #   'odd'
  # end
  array.sum.even? ? 'even' : 'odd'
end

numbers = [-1023, 1, -2]

p odd_or_even(numbers)
