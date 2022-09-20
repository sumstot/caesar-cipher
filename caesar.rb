DOWN_CASE_BASE = 97
DOWN_CASE_MAX = 122
UP_CASE_BASE = 65
UP_CASE_MAX = 90

puts 'Please enter a message to encode'

user_message = gets.chomp

puts 'Please enter your shift value'
shift = gets.chomp.to_i



def caesar_cipher_encode (string, shift)
  result = ''
  string.each_char do |char|
  base_char = char.ord < 91 ? UP_CASE_BASE : DOWN_CASE_BASE
  if char.ord.between?(UP_CASE_BASE, UP_CASE_MAX) || char.ord.between?(DOWN_CASE_BASE, DOWN_CASE_MAX)
    shift_char = (((char.ord - base_char) + shift) % 26) + base_char
    result += shift_char.chr
  else
    result += char
  end
  end
puts result
end

caesar_cipher(user_message, shift)



