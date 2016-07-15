module WordsCounter
  def self.count(text = gets)
    words_count = 0
    prev_char_is_letter = false
    text.each_char do |text_char|
      char_is_letter = text_char != ' '
      words_count += 1 if char_is_letter && !prev_char_is_letter
      prev_char_is_letter = char_is_letter
    end
    words_count
  end
end
