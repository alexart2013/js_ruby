def count(text = gets)
  word_count = 0
  prev_char_is_letter = false
  text.each_char do |text_char|
    char_is_letter = text_char != ' '
    word_count += 1 if char_is_letter && !prev_char_is_letter
    prev_char_is_letter = char_is_letter
  end
  puts word_count
end
puts count
