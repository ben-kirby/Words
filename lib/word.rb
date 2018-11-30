class Word
  attr_accessor :new_word, :definition
  @@words = []

  def initialize(attributes)
    @new_word = attributes.fetch(:new_word)
    @definition = attributes.fetch(:definition)
    @id = @@words.length() + 1
  end

  def save
    @@words.push(self)
  end

  def self.all
    @@words
  end

  def self.find(id)
    list = all()
    list.each do |i|
      if i.id == id.to_i
        return i
      else
        false
      end
    end
  end

  def self.clear
    @@words = []
  end
end
