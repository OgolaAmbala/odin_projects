# frozen_string_literal: true

def open_or_senior(data)
  data.map do |age, handicap|
    age >= 55 && handicap > 7 ? 'Senior' : 'Open'
  end
end

prospects = [[59, 12], [55, -1], [12, -2], [12, 12]]

open_or_senior(prospects)
