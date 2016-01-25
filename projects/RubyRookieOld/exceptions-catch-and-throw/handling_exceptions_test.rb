require 'test/unit'
require 'open-uri'

class HandlingExceptionsTest < Test::Unit::TestCase

  def test_1
    web_page = open('http://www.trovaprezzi.it/')

    output = File.open('trovaprezzi-homepage.html', 'w')
    while line = web_page.gets
      output.puts line
    end
    output.close
  end

  def test_2
    begin
      raise StandardError
    rescue StandardError, NameError => boom
      STDERR.puts $!
      STDERR.puts boom
    end
  end

end
