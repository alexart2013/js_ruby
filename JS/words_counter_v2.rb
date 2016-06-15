def count(text = gets)
  i = 0
  word_count = 0
  prev_char_is_letter = false
  while i < text.length do
    if text[i] != ' ' && !prev_char_is_letter
      prev_char_is_letter = true
      word_count += 1
    elsif text[i] == ' '
      prev_char_is_letter = false
      i += 1
    else
      prev_char_is_letter = true
      i += 1
    end
  end
  puts word_count
end