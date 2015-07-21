require 'test/unit'
require_relative 'show'

class AdvancedNestedGroupTest < Test::Unit::TestCase

  def setup
    @show = Show.new
  end

  def test_1
    # Espressione complicata per matchare i palindromi.
    p = /\A(?<a>|.|(?:(?<b>.)\g<a>\k<b+0>))\z/
    # può essere una stringa vuota
    # un singolo carattere
    # un carattere seguito da un palindromo seguito dallo stesso carattere

    @show.regex('madam', p)

    # Dato che è illeggibile posso renderela più leggibile:
    palindrome_matcher = /
    \A
      (?<palindrome>
                                      # niente
      | \w                            # un singolo carattere
      | (?:                           # xxx <palindrome> xxx
          (?<some_letter>\w)
          \g<palindrome>
          \k<some_letter+0>           # +0 significa la lettera allo stesso livello di innesto, quindi quella di ?<some_letter>\w per intenderci
        )
      )
    \z
    /x

    @show.regex('madam', palindrome_matcher)
    @show.regex('m', palindrome_matcher)
    @show.regex('adam', palindrome_matcher)
  end

end