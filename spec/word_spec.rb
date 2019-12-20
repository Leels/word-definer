require('rspec')
require('word')

describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('.all') do
    it("returns an empty array when there are no words") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('.clear') do
      it("clears all words") do
        word = Word.new("Abc", nil, "blah blah")
        word.save()
        word2 = Word.new("Xyz", nil, "yada yada")
        word2.save()
        Word.clear()
        expect(Word.all).to(eq([]))
      end
    end

  describe('#save') do
    it("saves a word") do
      word = Word.new("Abc", nil, "blah blah")
      word.save()
      word2 = Word.new("Xyz", nil, "yada yada")
      word2.save()
      expect(Word.all).to(eq([word, word2]))
    end
  end

  describe('#==') do
    it("is the same word if it has the same attributes as another word") do
      word = Word.new("Abc", nil, "blah blah")
      word2 = Word.new("Abc", nil, "blah blah")
      expect(word).to(eq(word2))
    end
  end

  describe('.find') do
    it("finds a word by id") do
      word = Word.new("Abc", nil, "blah blah")
      word.save()
      word2 = Word.new("Xyz", nil, "yada yada")
      word2.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe('#delete') do
   it("deletes a word by id") do
     word = Word.new("Abc", nil, "blah blah")
     word.save()
     word2 = Word.new("Xyz", nil, "yada yada")
     word2.save()
     word.delete()
     expect(Word.all).to(eq([word2]))
   end
 end

 describe('#update') do
    it("updates a word by id") do
      word = Word.new("Abc", nil, "blah blah")
      word.save()
      word.update("Def", "new blah blah")
      expect(word.word_name).to(eq("Def"))
    end
  end

  describe('.search_by_word_name') do
    it("finds a word by word name") do
      word = Word.new("Abc", nil, "blah blah")
      word.save()
      word2 = Word.new("Xyz", nil, "yada yada")
      word2.save()
      expect(Word.search_by_word_name(word.word_name)).to(eq([word]))
    end
  end

  describe('.alphabetize') do
    it("alphabetizes list of words") do
      word = Word.new("Xyz", nil, "yada yada")
      word.save()
      word2 = Word.new("Abc", nil, "blah blah")
      word2.save()
      expect(Album.all).to(eq([word2, word]))
    end
  end

end
