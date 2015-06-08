require 'test/unit'

class MutualExclusionTest < Test::Unit::TestCase

  def test_1
    # Qua ci sono più thread che aggiornano la stessa variabile.
    sum = 0

    threads = 10.times.map do
      Thread.new do
        100_000.times do
          value = sum + 1
          print " #{value} " if value % 250_000 == 0 # quan parte un thread di scrittura e fa sballare i tempi
          sum = value
        end
      end
    end

    threads.each(&:join)
    print "# Now sum is #{sum}!"
  end

  def test_2
    # Qua uso i mutex per fare il lock della risorsa condivisa.
    sum = 0
    mutex = Mutex.new

    threads = 10.times.map do
      Thread.new do
        100_000.times do
          mutex.lock
          value = sum + 1
          print " #{value} " if value % 250_000 == 0
          sum = value
          mutex.unlock
        end
      end
    end

    threads.each(&:join)
    print "# Now sum is #{sum}!"
  end

  def test_3
    # Qua uso i mutex per fare il lock della risorsa condivisa.
    sum = 0
    mutex = Mutex.new

    threads = 10.times.map do
      Thread.new do
        100_000.times do
          mutex.synchronize do
            value = sum + 1
            print " #{value} " if value % 250_000 == 0
            sum = value
          end
        end
      end
    end

    threads.each(&:join)
    print "# Now sum is #{sum}!"
  end

end



