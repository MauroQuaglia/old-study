require_relative 'summable'

class VowelFinder2
  include Enumerable
  include Comparable
  include Summable

  def initialize(string)
    @string = string
  end

  def each
    # Itera sulla stringa e tutte le volte che trova una vocale la torna.
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end

  def sum2
    inject(:+)
  end

  def <=>(other)
    #self.inject(:+).length <=> other.inject(:+).length
    self.sum.length <=> other.sum.length
  end

end