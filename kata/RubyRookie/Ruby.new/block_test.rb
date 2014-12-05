require 'test-unit'

class BlockTest < Test::Unit::TestCase

  def test_1
    puts [1, 2, 3].map { |k| k+1 } # fa le operazioni k+1 sugli elementi dell'array... poi con il puts mostra il nuovo array (map, puts)
    puts '----'
    puts [1, 2, 3].map do # fa il puts... poi le operazioni di k + 1 sull'array? (puts, map)
    |k|
      k+1
    end
  end

  def test_2
    puts [1, 2, 3].each { |k| puts k+1 } # qui si vede la precedenza: PRIMA le puts dell'each, poi il PUTS dell'array
    puts '----' #Non si capisce bene però sotto cosa fa...
    puts [1, 2, 3].each do  # prima il PUTS dell'array... poi boh
    |k| puts k+1
    end
    puts [1,2,3].each
  end

end