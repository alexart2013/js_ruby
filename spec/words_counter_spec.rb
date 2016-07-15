require '../words_counter.rb'
describe WordsCounter do
  it 'should returns 2'  do
    expect(WordsCounter.count("word1 word2")).to eq 2
  end

  it 'should return 3' do
    expect(WordsCounter.count("word1 word2 word3")).to eq 3
  end

  it 'should return 2' do
    expect(WordsCounter.count(" word1 word2")).to eq 2
  end

  it 'should return 1' do
    expect(WordsCounter.count("word1-word2")).to eq 1
  end

  it 'should return4' do
    expect(WordsCounter.count("word1 word2 3 4")).to eq 4
  end

  it 'should return 2' do
    expect(WordsCounter.count("  word1  word2")).to eq 2
  end
end