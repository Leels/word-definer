class Word
  attr_accessor :word_name, :id, :image

  @@words = {}
  @@total_rows = 0

  def initialize(word_name, id, image)
    @word_name = word_name
    @id = id || @@total_rows += 1
    @image = image
  end

  def self.all
    @@words.values
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def save
    @@words[self.id] = Word.new(self.word_name, self.id, self.image)
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

  def update(word_name, image)
   self.word_name = word_name
   self.image = image
   @@words[self.id] = Word.new(self.word_name, self.id, self.image)
 end

 def self.search_by_word_name(word_name)
    @@words.values.select { |word| /#{word_name}/i.match? word.word_name }
  end

  def self.alphabetize
     @@words.values().sort { |a, b| a.word_name.downcase <=> b.word_name.downcase }
   end

   def definitions
    Definition.find_by_word(self.id)
  end

end
