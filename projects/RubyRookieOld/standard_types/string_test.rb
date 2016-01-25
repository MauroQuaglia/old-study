require 'test/unit'


class StringTest < Test::Unit::TestCase

  def test_1
    #The "\x" is a special escape to encode an arbitrary byte from hex, so "\xE5" means byte 0xE5.
    puts "\xE5"
    puts "\xA3"
    puts '\xE5'
    puts 0b101010
  end

  def test_2
    # oss: il carattere q o Q è opzionale.
    # A livello di significato, possiamo dire che:
    # q = '
    # Q = "
    puts '\\' # \
    puts '\'' # '
    puts 'Anche se li metto "\\" me ne lascia solo uno.'
    puts %q!XXX!
    puts %q?XXX?
    puts %?AAA?
    puts %Q!XXX!
    puts %Q?XXX?
    puts %Q{ZZZ}
    puts %?LL?
  end

  def test_4
    s =<<ABC
   abc
   123
ABC
    p s # non posso spostare il delimitaotre finale

    b =<<-ABC
   abc
   123
          ABC
    p b # posso spostare il delimitatore finale
  end

  def test_5
    prt = <<-STR1, <<-STR2
    Concate
    STR1
    ate
    STR2

    p prt
  end

  def test_3
    puts "Def e exe method: #{
    def write(literal)
      literal + ' mq'
    end
    write('bad')
    } coders!"
  end


end

