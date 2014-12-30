require 'test/unit'
#class Enumerator
#  def lazy_select(&block)
#    self.class.new do |y|
#      each do |n|
#        y << n if block.call(n)
#      end
#    end
#  end
#end

class Enumerator
  def lazy_select
    self.class.new do |y|
      each do |n|
        y << n
      end
    end
  end.lazy
end


class Enumerator2Test < Test::Unit::TestCase

  def test_1
    # One way to create an Enumerator is by passing a block to its constructor.
    # A yielder object will be passed to this block.
    # il metodo << di yielder can be used to define the elements the Enumerator will iterate through.
    # yielder = produttore di raccolti

    enum = Enumerator.new do |yielder|
      yielder << "a" # significa che l'enumeratore sta iterando su "a"
      # tutte le volte che viene fatto yielder il controllo torna al flusso principale
      # quando richiamo l'enumerator riparte da dove aveva lasciato
      # dopo l'ultimo yield lancia un'eccezione StopIteration
      yielder << "b"
      yielder << "c"
    end

    p enum.next
    p enum.next
    p enum.next
    p enum.next
  end

  def test_2
    enum = Enumerator.new do |y|
      y << 1
      y << 2
    end

    loop do
      p enum.next
    end
  end

  def test_3
    enum = Enumerator.new do |y|
      n = 0
      loop do
        n += 1
        y << n
      end
    end

    # metodi come select e map agiscono sull'intera collezione, vogliono analizzarla tutta
    # quindi entro in un loop infinito

    p enum.my_lazy{|n| n % 2 == 0}.first(3) # in questo caso invece esce
    #p enum.lazy_select{|n| n % 2 == 0}.first(3) # in questo caso invece esce
    p '---'
    p enum.select{|n| n % 2 == 0}.first(3)

  end


end
