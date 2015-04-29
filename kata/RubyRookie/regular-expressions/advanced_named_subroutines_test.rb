require 'test/unit'
require_relative 'show'

class AdvancedNamedSubroutinesTest < Test::Unit::TestCase

  def test_1
    sentence = %r{
      (?<subject> cat  | dog   ){0} # Mettendo {0} vuol dire di non matcharlo e andare oltre fino a quando non lo chiamo
      (?<verb>    eats | drinks){0}

      The\s\g<subject>\s\g<verb>.
    }x

    md = sentence.match('The cat eats.')
    p "The subject is #{md[:subject]} and the verb is #{md[:verb]}."

    #Un altro modo di scriverla è:
    sentence =~ 'The cat eats.'
    p "The subject is #{$~[:subject]} and the verb is #{$~[:verb]}."
  end


end