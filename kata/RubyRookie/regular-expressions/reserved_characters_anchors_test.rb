require 'test/unit'

class ReservedCharactersAnchorsTest < Test::Unit::TestCase

  def test_1
    p /iss/ =~ 'm iss iss ipi' # 2; torna l'inizio del primo match.
  end

  def test_2
    p /^iss/ =~ 'm iss iss ipi' # nil; la stringa deve iniziare per iis.
    p /^iss/ =~ 'iss iss ipi' # 0; ok.
  end

  def test_3
    p /iss$/ =~ 'm iss iss ipi' # nil; la stringa deve finire per iis.
    p /iss$/ =~ 'm iss iss' # 6; ok.
  end

  def test_4
    p /^123/ =~ '123xxx'
    p /\a123/ =~ '123xxx'
    p /\A123/ =~ '123xxx'

    p /123$/ =~ 'xxx123'
    p /123\z/ =~ 'xxx123'
    p /123\Z/ =~ 'xxx123'
  end

end