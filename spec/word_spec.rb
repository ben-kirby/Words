require ('rspec')
require ('pry')
require ('Word')

describe('Word') do
  before do
    Word.clear
    attributes = {:new_word=> "dog"}
    @word = Word.new(attributes)
    @word.save
    # @word2 = Word.new(attributes)
    # @word2.save
  end

  describe('#save') do
    it('tests save method for Word') do
      Word.clear
      expect(@word.save()).to(eq([@word]))
    end
  end
end
