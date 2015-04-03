class VowelFinder
  include Enumerable

  def initialize(string)
    # di fatto la stringa è un array di caratteri, quindi itera su questi. è giusto quindi avere persons!
    @string = string
  end

  def each
    # Itera sulla stringa e tutte le volte che trova una vocale la torna.
    @string.scan(/[aeiou]/) { |vowel| yield vowel }
  end

end