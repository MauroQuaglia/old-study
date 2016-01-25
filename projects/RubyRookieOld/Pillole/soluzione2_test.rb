require 'test/unit'

class Soluzione1Test < Test::Unit::TestCase

  def test_2
    n = [1, 2, 3]
    l = %w(a b c d)

    n_enum = n.to_enum
    l_enum = l.to_enum

    loop do
      p "#{n_enum.next} - #{l_enum.next}"
    end
  end

end
