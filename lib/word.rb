class Word
  attr_accessor :word_name, :id, :definition

  @@words = {}
  @@total_rows = 0

  def initialize(word_name, id, definition)
    @word_name = word_name
    @id = id || @@total_rows += 1
    @definition = definition
  end

  def self.all
    @@words.values
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def save
    @@words[self.id] = Word.new(self.word_name, self.id, self.definition)
  end

  def ==(word_to_compare)
    self.word_name == word_to_compare.word_name
  end

  def self.find(id)
    @@words[id]
  end

  def delete
    @@words.delete(self.id)
  end

  def update(word_name, definition)
   self.word_name = word_name
   self.definition = definition
   @@words[self.id] = Word.new(self.word_name, self.id, self.definition)
 end

 def self.search_by_word_name(word_name)
    @@words.values.select { |word| /#{word_name}/i.match? word.word_name }
  end

end
