DOWN_CASE_BASE = 97
DOWN_CASE_MAX = 122
UP_CASE_BASE = 65
UP_CASE_MAX = 90
running = true

while running
  puts 'Would you like to encode or decode a message?'

  user_answer = gets.chomp.downcase

  puts "Please enter a message to #{user_answer}"

  user_message = gets.chomp

  puts 'Please enter your shift value'
  shift = gets.chomp.to_i
  if user_answer == 'decode'
    shift = shift * -1
  end


  def caesar_cipher (string, shift, user_answer)
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
    puts "Your #{user_answer}d message is #{result}"
  end

  caesar_cipher(user_message, shift, user_answer)
  puts "Would you like to encode or decode another message? Y or N?"
  keep_going = gets.chomp.downcase
  if keep_going == 'n'
    running = false
  end
end

  


