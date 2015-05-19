require 'test/unit'
require 'open-uri'

class FetchTest < Test::Unit::TestCase

  def test_1
    web_page = open('http://www.trovaprezzi.it')
    output = File.open('tp.html', 'w')

    begin
      while line = web_page.gets
        output.puts line
        raise StandardError
      end
      output.close
    rescue Exception
      STDERR.puts "Failed! #{$!}"
      output.close
      #File.delete('tp.html')
      raise
    end

  end

  def test_2
    web_page = open('http://www.trovaprezzi.it')
    output = File.open('tp.html', 'w')

    begin
      while line = web_page.gets
        output.puts line
        raise StandardError
      end
      output.close
    rescue Exception => boom
      STDERR.puts "Failed! #{boom}"
      output.close
      raise boom
    end

  end


  def test_3
    begin
        raise NameError
    rescue StandardError, NameError => boom
      STDERR.puts "XXX#{boom.backtrace}XXX"
    rescue SecurityError => security
      STDERR.puts "YYY#{security.backtrace}YYY"
    end


  end



end
