# frozen_string_literal: true

def count_by(x, n)
  multiples = []

  i = 0
  while i < n
    num = (i + 1) * x
    multiples << num
    i += 1
  end
  p multiples
end
