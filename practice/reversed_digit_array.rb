# frozen_string_literal: true

def digitize(number)
  number.to_s.reverse.chars.map(&:to_i)
end

digits = 35_231

p digitize(digits)
