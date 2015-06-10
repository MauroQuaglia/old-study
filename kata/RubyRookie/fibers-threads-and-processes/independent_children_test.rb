require 'test/unit'

class IndependentChildrenTest < Test::Unit::TestCase

  def test_1
    exec('sort test-file.txt > output.txt') if fork.nil?
  end

  def test_2
    fork{exec('sleep 5s')}
    Process.wait # aspetta finché non ha finito, se non lo metto il test esce subito e il sottoprocesso continua per i fatti suoi.
  end

  def test_3
    trap('CLD') do
      puts 'Child termianted!'
    end

    # Sembra che non riesca a fare il puts.
    fork{exec('sleep 5s')}
  end

end

