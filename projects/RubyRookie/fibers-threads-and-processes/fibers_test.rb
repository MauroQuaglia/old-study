require 'test/unit'

class FibersTest < Test::Unit::TestCase

  def test_1
    # Metodo classico.
    # Però mischia due cose: cercare e contare.
    counts = Hash.new(0)
    File.foreach('test-file.txt') do |line|
      line.scan(/\w+/) {|word| counts[word] += 1}
    end

    counts.each_pair{|key, value| p "#{key} - #{value}"}
  end

  def test_2
    # Dentro la fibra ci metto tutte le parole trovate. Fa da contenitore.
    words = Fiber.new do
      File.foreach('test-file.txt') do |line|
        line.scan(/\w+/) {|word| Fiber.yield(word)}
      end
      nil # Ultima riga, è quella che poi mi farà uscire dal while successivo.
      # Non sarebbe necessario perché già quando il foreach finisce ritorna nil.
    end

    counts = Hash.new(0)
    while word = words.resume
      counts[word] += 1
    end

    p words.class
    counts.each_pair{|key, value| p "#{key} - #{value}"}
  end

  def test_3
    # Torna tutti i numeri divisibili per due e non per tre.
     numbers = Fiber.new do
     n = 2
     loop do
       Fiber.yield(n) if n % 3 != 0
       n += 2
     end
   end

   10.times{p numbers.resume}
  end

end