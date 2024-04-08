# frozen_string_literal: true

def add_binary(a, b)
  decimal_number = a + b
  return 0 if decimal_number == 0

  binary = ''
  while decimal_number > 0
    binary = (decimal_number % 2).to_s + binary
    decimal_number /= 2
  end
  binary
end

add_binary(6, 7)

# def add_binary(a,b)
#   (a+b).to_s(2)
# end
