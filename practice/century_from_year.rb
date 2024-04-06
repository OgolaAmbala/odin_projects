# frozen_string_literal: true

def century(year)
  if year % 100 == 0
    year / 100
  else
    (year / 100) + 1
  end
end
