require 'test/unit'

class BlocksAndSubprocessesTest < Test::Unit::TestCase

  def test_1
    # f rappresenta il fork
    IO.popen('date') {|f| puts "Date is #{f.gets}"}
  end

  def test_2
    #3124
    fork do
      puts '1'
      sleep 1
      puts '2'
    end
    puts '3'
    sleep 2
    puts '4'
  end

  def test_3
    #1234
    fork do
      puts '1'
      sleep 1
      puts '2'
    end
    Process.wait
    puts '3'
    sleep 2
    puts '4'
  end

end

