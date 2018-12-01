class Word
  attr_accessor :new_word, :id, :picture
  attr_reader :definition
  @@words = []

  def initialize(attributes)
    @new_word = attributes.fetch(:new_word)
    @definition = []
    @definition.push(attributes.fetch(:definition))
    @picture = "http://www.datacenterdude.com/wp-content/uploads/2015/08/google-alphabet.jpg"
    @id = @@words.length() + 1
  end

  def save
    @@words.push(self)
  end

  def add_definition(attributes)
    new_definition = attributes.fetch('definition')
    unless new_definition == ""
      @definition.push(new_definition)
    end
    return false
  end

  def change_photo(attributes)
    new_photo = attributes.fetch('photo_url')
    unless new_photo == ""
      @picture = new_photo
    end
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

  def parental_control

  end
end
