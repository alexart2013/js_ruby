def count(text = gets)
  i = 0
  word_count = 0
  prev_char_is_letter = false
  while i < text.length do
    char_is_letter = text[i] != ' '
    word_count += 1 if char_is_letter && !prev_char_is_letter
    prev_char_is_letter = char_is_letter
    i += 1
  end
  puts word_count
end