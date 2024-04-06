# frozen_string_literal: true

def basic_op(operator, value1, value2)
  case operator
  when '+'
    value1 + value2
  when '-'
    value1 - value2
  when '*'
    value1 * value2
  else
    value1 / value2
  end
end
