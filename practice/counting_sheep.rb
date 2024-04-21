# frozen_string_literal: true

def countSheeps(array)
  array.count { |sheep| sheep == true }
end

sheep = [
  true, true, true, false, true, true, true, true,
  true, false, true, false, true, false, false, true,
  true, true, true, true, false, false, true, true
]

p countSheeps(sheep)
