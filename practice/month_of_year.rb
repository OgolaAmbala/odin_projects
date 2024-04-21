# frozen_string_literal: true

def quarter_of(month)
  case month
  when 1..3
    1
  when 4..6
    2
  when 7..9
    3
  else
    4
  end
end

p quarter_of(8)
