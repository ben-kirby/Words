class Word
  attr_accessor :new_word
  @@words = []

  def initialize(attributes)
    @new_word = attributes.fetch(:new_word)
    @id = @@words.length() + 1
  end

  def save
    @@words.push(self)
  end

  def self.all
    @@words
  end

  def self.find

  end

  def self.clear
    @@words = []
  end
end
