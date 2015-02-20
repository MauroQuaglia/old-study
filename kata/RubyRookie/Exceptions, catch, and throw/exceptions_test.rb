require 'test/unit'

class ExceptionsTest < Test::Unit::TestCase

  def test_1
   File.open('xxx.txt')
  end

  def test_2
    begin
      raise ArgumentError
    rescue ArgumentError => boom
      puts "XXXXXXXXXXXX#{boom.backtrace}"
    ensure
      puts 'ensure'
    end
  end

  def test_3
    #raise -> RuntimeError
    #raise 'mp3' -> RuntimeError con messaggio
    #raise NameError, 'mp3'  -> NameError con messaggio mp3
    raise NameError, 'mp3'
  end

end

class MyExc1 < NoMemoryError

end

class MyExc2 < StandardError

end
