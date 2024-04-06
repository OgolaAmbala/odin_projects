# frozen_string_literal: true

def reverse_words(string)
  string.split(/\b/).map(&:reverse).join
end

# Test cases
p reverse_words('This is an example!')
p reverse_words('double  spaces')
