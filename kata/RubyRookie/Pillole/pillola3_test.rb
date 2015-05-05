require 'test/unit'

class Pillola3Test < Test::Unit::TestCase

  def test_1
    p direct_splat(1, 2, 3, 4, 5)
    # Come si può passare in maniera compatta gli stessi parametri?
  end

  private

  def direct_splat(a, b, c, d, e)
    # Un return multiplo torna un array di elementi.
    return a, b, c, d, e
  end

end

