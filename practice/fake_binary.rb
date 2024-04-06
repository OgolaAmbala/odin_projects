# frozen_string_literal: true

def fake_bin(s)
  arr = s.chars.map(&:to_i).map do |num|
    num < 5 ? 0 : 1
  end
  arr.join.to_s
end

string = '45385593107843568'

p fake_bin(string)

# Refactored version
# def fake_bin(s)
#   arr = s.chars.map do |num|
#     num < '5' ? 0 : 1
#   end
#   arr.join.to_s
# end

# s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
