class VowelFinder
  include Enumerable

  def initialize(string)
    @string = string
  end

  def each
    # Itera sulla stringa e tutte le volte che trova una vocale la torna.
    @string.scan(/[aeiou]/) { |vowel| yield vowel }
  end

end