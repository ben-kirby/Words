class Word
  attr_accessor :new_word, :id, :picture
  attr_reader :definition
  @@words = []

  def initialize(attributes)
    @new_word = attributes.fetch(:new_word)
    @definition = []
    @definition.push(attributes.fetch(:definition))
    @id = @@words.length() + 1
  end

  def save
    @@words.push(self)
  end

  def add_definition(attributes)
    new_definition = attributes.fetch('definition')
    @definition.push(new_definition)
  end

  def self.all
    @@words
  end

  def self.find(id)
    @@words.each do |i|
      if i.id == id.to_i()
        return i
      end
    end
  end

  def self.clear
    @@words = []
  end
end
