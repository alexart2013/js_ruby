require '../words_counter_v3.rb'
describe WordsCounter do
  it 'returns 2 at'  do
    expect(WordsCounter.count("word word2")).to eq 2
  end
end