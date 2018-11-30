require ('rspec')
require ('pry')
require ('Word')

describe('Word') do
  before do
    Word.clear
    attributes = {:new_word=> "dog", :definition=> "An animal"}
    @word = Word.new(attributes)
    @word.save
    @word2 = Word.new(attributes)
    @word2.save
  end

  describe('#save') do
    it('tests save method for Word') do
      Word.clear
      expect(@word.save()).to(eq([@word]))
    end
  end

  describe('#all') do
    it('reurns a list of all contacts') do
      expect(Word.all()).to(eq([@word, @word2]))
    end
  end

  describe('#find') do
    it('reurns a list of all contacts') do
      expect(Word.find(1)).to(eq(@word))
    end
  end
end
