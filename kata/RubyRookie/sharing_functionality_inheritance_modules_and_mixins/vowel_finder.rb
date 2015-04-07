class VowelFinder
  include Enumerable

  def initialize(string)
    # Di fatto la stringa è come se fosse un array di caratteri.
    @string = string
  end

  def each
    # Itera sulla stringa e tutte le volte che trova una vocale la torna.
    @string.scan(/[aeiou]/) { |vowel| yield vowel }
  end

end