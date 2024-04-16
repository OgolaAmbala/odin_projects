# frozen_string_literal: true

def caesar_cipher(string, shift_factor)
  converted_characters = []

  string.each_char do |char|
    converted_characters << if char.ord.between?(97, 122)
                              (((((char.ord - 97) + shift_factor) + 26) % 26) + 97).chr
                            elsif char.ord.between?(65, 90)
                              (((((char.ord - 65) + shift_factor) + 26) % 26) + 65).chr
                            else
                              char
                            end
  end

  converted_characters.join
end

p caesar_cipher('Hello, World!', 3)
