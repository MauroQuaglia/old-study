require 'test/unit'

class ThreadsAndExceptionsTest < Test::Unit::TestCase

  def test_1
    # Il thread 1 muore sempre, ma gli altri non se ne accorgono.
    4.times do |number|
      Thread.new(number) do |i|
        fail if i == 1
        print "#{i}\n"
      end
    end
    sleep 1 # Aspetto perchè non essendoci il join può darsi che il test finisca prima che il thread abbia scritto il suo numero.
  end


end

