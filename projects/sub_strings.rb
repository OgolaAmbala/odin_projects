# frozen_string_literal: true

def substrings(str, arr)
  matches = {}

  arr.each do |word|
    matches[word] = str.downcase.scan(word).count
  end
  p matches
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings('below', dictionary)
