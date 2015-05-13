require 'test/unit'

class LoopsTest < Test::Unit::TestCase

  def test_1
    a = 1
    while a <= 3
      p a
      a+=1
    end
  end

  def test_2
    a = 1
    until a > 3
      p a
      a+=1
    end
  end

  def test_3
    a = 1
    a += 1 while a <= 3
    p a
  end

  def test_4
    File.foreach('numbers.txt') do |line|
      puts(line) if line =~ /two/ .. line =~ /five/
      # una volta che scatta il primo comincia a scrivere finché non scatta il secondo.
    end
  end

  def test_5
    File.foreach('numbers.txt') do |line|
      puts(line) if ($. == 1 || line =~ /eig/) .. ($. == 3 || line =~ /nin/)
      # $. è il numero di linea
    end
  end

  #1 T .. F scatta il primo e scrive
  #2 F .. F per fermare deve scattare il secondo
  #3 F .. V scatta il secondo, scrive e poi finchè non riscatta il primo non scrive niente
  #4 F .. F
  #5 F .. F
  #6 F .. F
  #7 F .. F
  #8 T .. F scatta il primo e scrive
  #9 F .. T scatta il secondo e scrive
  #10 F .. F non scrive più

  def test_6
    p 'mauro' while false

    begin
      p  'quaglia'
    end while false
  end

end
