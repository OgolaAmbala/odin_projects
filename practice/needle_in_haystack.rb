# frozen_string_literal: true

def find_needle(haystack)
  haystack.each_with_index do |string, index|
    return "found the #{string} at position #{index}" if string == 'needle'
  end
end
