require 'test/unit'

class MatchingStringTest < Test::Unit::TestCase

  def test_0
    p /cat/ =~ 'cat'
    p 'cat' =~ /cat/

    p /cat/ !~ 'cat'
    p 'cat' !~ /cat/
  end

  def test_1
    p /cat/ =~ 'dog and cat' # 8, è la posizione in cui inizia il match.
    p 'dog and cat' =~ /cat/   # 8, è la posizione in cui inizia il match.

    p /cat/ =~ 'catch' #0
    p /cat/ !~ 'catch' #false
    p /cat/ !~ 'xaltch' #true

    p /cat/ =~ 'Cat' # nil
    p /cat/ =~ 'c.a.t.' # nil
  end

  def test_2
    p /123/ =~ '86512312' # 3
    p /123/ =~ 'abc123' # 3
    p /123/ =~ '1.23' # nil
  end

  def test_3
    p /t a b/ =~ 'hit a ball' # 2
    p /t a b/ =~ 'tabel' # nil
  end

  def test_4
    p /\*/ =~ 'a*' # 1
  end

  def test_5
    string = 'cat'

    if /cat/ =~ string
      puts 'ho matchato! dato che 0 è true, entro nella if.'
    end

    if /dog/ =~ string
      puts 'Qui non ci arrivo perchè nil è false quindi nella if non entro'
    end
  end

  def test_6
    File.foreach('regex.csv').with_index do |line, index|
      puts "#{index}: #{line}" if line =~ /cat/
    end
  end

  def test_7
    File.foreach('regex.csv') do |line|
      puts "MATCH #{line}" if line =~ /cat/
    end

    File.foreach('regex.csv') do |line|
      puts "NO MATCH #{line}" if line !~ /cat/
    end
  end

end