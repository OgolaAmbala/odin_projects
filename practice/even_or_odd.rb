# frozen_string_literal: true

def even_or_odd(number)
  if number.odd?
    'odd'
  else
    'even'
  end
end

# def even_or_odd(number)
#   number.even? ? 'Even' : 'Odd'
# end
p even_or_odd(9)
