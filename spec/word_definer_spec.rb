require('rspec')
require('word')

describe '#Stage' do

  before(:each) do
    Stage.clear()
    Artist.clear()
  end

  describe('.all') do
    it("returns an empty array when there are no words") do
      expect(Stage.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a word") do
      word = Stage.new("North", nil)
      word.save()
      word2 = Stage.new("South", nil)
      word2.save()
      expect(Stage.all).to(eq([word, word2]))
    end
  end

end
