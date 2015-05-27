require 'test/unit'
require 'open-uri'
require 'nokogiri'

class ParsingHtmlTest < Test::Unit::TestCase

  def test_1
    page = open('https://pragprog.com/book/ruby3/programming-ruby-1-9')

    # normalmente la regexp non è la soluzione giusta. Ci vorrebbe una libreria per il parsing.
    if page.read =~ %r{<title>(.*)</title>}
      puts "Title is #{$1.inspect}"
    end
  end

  def test_2
    page = open('https://pragprog.com/book/ruby3/programming-ruby-1-9')
    doc = Nokogiri::HTML(page)

    puts "Title is #{doc.xpath('//title').inner_html}"
  end

end
