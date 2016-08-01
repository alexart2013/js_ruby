require './words_counter.rb'

describe WordsCounter do
  it 'should count 2 words ignoring spaces'  do
    expect(WordsCounter.count('word1 word2')).to eq 2
  end

  it 'should count 3 words ignoring spaces' do
    expect(WordsCounter.count('word1 word2 word3')).to eq 3
  end

  it 'should count 2 words ignoring spaces' do
    expect(WordsCounter.count(' word1 word2')).to eq 2
  end

  it 'should count 1 words ignoring spaces' do
    expect(WordsCounter.count('word1-word2')).to eq 1
  end

  it 'should count 4 words ignoring spaces' do
    expect(WordsCounter.count('word1 word2 3 4')).to eq 4
  end

  it 'should count 2 words ignoring spaces' do
    expect(WordsCounter.count('  word1  word2')).to eq 2
  end

  it 'should ignores multiple spaces in row' do
    expect(WordsCounter.count("От меня вечор Леила\n
                               Равнодушно уходила.\n
                               Я сказал: \"Постой, куда?\"\n
                               А она мне возразила:\n
                               \"Голова твоя седа\".\n
                               Я насмешнице нескромной\n
                               Отвечал: \"Всему пoрa!\n
                               То, что было мускус темный\n
                               Стало нынче камфора\".\n
                               Но Леила неудачным\n
                               Посмеялася речам\n
                               И сказала: \"Знаешь сам:\n
                               Сладок мускус новобрачным,\n
                               Камфора годна гробам")).to eq 46
  end
end