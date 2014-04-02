require '../filters'

class SolitaireCipher

  def initialize
    @filters = [RemoveNoLetterFilter.new, UppercaseFilter.new, SplitCharacterFilter.new]
  end

  def encode(value)
    @filters.each{|filter| value=filter.perform(value)}
    value
  end
end