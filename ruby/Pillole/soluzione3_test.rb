require 'test/unit'

class Soluzione3Test < Test::Unit::TestCase

  def test_1
    # Viene chiamato splat inverso.
    p direct_splat *(1..5)
  end

  private

  def direct_splat(a, b, c, d, e)
    # Un return multiplo torna un array di elementi.
    return a, b, c, d, e
  end

end
