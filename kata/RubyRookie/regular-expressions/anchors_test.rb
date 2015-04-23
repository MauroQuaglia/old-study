require 'test/unit'

class AnchorsTest < Test::Unit::TestCase

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
    p /\A123/ =~ '123xxx'

    p /123$/ =~ 'xxx123'
    p /123\Z/ =~ 'xxx123'
  end

  def test_5
    p /cat/ =~ 'xxxcatxxx' # ok, il cat è compreso nella parole
    p /\bcat/ =~ 'xxxcatxxx' # nil perché non inizia per cat
    p /\bcat/ =~ 'xxx catxxx' # ok, inizia per cat

    p /\bcat\b/ =~ 'xxx cat xxx' #ok cat c'è
  end

end