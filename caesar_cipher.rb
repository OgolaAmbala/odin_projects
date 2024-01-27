def caesar_cipher(str, shift_factor)
  result = ""

  str.each_char do |char|
   if char.match(/[a-zA-Z]/)
      
      # Determine whether the character is uppercase or lowercase
      is_uppercase = char == char.upcase
      
      # Convert the character to its ASCII code
      ascii_code = char.ord
      
      # Apply the shift factor
      shifted_code = (ascii_code + shift_factor - (is_uppercase ? 'A'.ord : 'a'.ord)) % 26 + (is_uppercase ? 'A'.ord : 'a'.ord)
      
      # Convert the shifted code back to a character
      shifted_char = shifted_code.chr
      
      # Append the shifted character to the result string
      result += shifted_char
    else
      # If the character is not a letter, leave it unchanged
      result += char
    end
  end

  return result
end

# Example usage:
original_string = "Hello, World!"
shift_factor = 3
encrypted_string = caesar_cipher(original_string, shift_factor)

puts "Original String: #{original_string}"
puts "Encrypted String: #{encrypted_string}"
