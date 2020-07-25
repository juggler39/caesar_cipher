# frozen_string_literal: true

def replace_letter(letter, shift)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  return letter if alphabet.index(letter).nil?

  letter_index = alphabet.index(letter)
  alphabet[(letter_index + shift) % 26]
end

def caesar_cipher(string, shift)
  cipher = ''
  string.each_char do |c|
    if c == c.upcase
      cipher += replace_letter(c.downcase, shift).upcase
    else
      cipher += replace_letter(c, shift)
    end
  end
  return cipher
end

puts caesar_cipher('What a string!', 5)
