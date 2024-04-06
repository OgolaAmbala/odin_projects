# frozen_string_literal: true

def fake_bin(s)
  arr = s.chars.map do |num|
    num < '5' ? 0 : 1
  end
  arr.join.to_s
end

string = '45385593107843568'

p fake_bin(string)
