require 'test/unit'
require_relative 'show'

class AdvancedBacktrackingTest < Test::Unit::TestCase

  def setup
    @show = Show.new
  end

  def test_1
    # Cercare più X che non sono seguite da O.
    pattern = /(X+)(?!O)/

    @show.regex('test XXXY', pattern) # XXX
    @show.regex('test XXXO', pattern) # XX quindi in questo caso non andrebbe tanto bene, comunque la catena di X e seguita da O.
  end

  def test_2
    # Cercare più X che non sono seguite da O.
    pattern = /(?>X+)(?!O)/

    @show.regex('test XXXY', pattern) # XXX
    @show.regex('test XXXO', pattern) # No match!
    @show.regex('test XXXO XXXXY', pattern) # XXXX
  end

  def test_3
    # Un modo diverso di scrivere la precedente
    pattern = /(X++)(?!O)/

    @show.regex('test XXXY', pattern) # XXX
    @show.regex('test XXXO', pattern) # No match!
    @show.regex('test XXXO XXXXY', pattern) # XXXX
  end


end