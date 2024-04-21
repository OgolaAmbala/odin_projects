# frozen_string_literal: true

def simple_multiplication(number)
  number.even? ? number * 8 : number * 9
end

p simple_multiplication(12)

p simple_multiplication(11)
