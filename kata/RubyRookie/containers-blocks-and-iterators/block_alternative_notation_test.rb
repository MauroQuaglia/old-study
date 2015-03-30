require 'test/unit'
require_relative 'proc_example'

class BlockAlternativeNotationTest < Test::Unit::TestCase

  def test_1
    # modo alternativo per creare un oggetto proc
    a = lambda {|n| p n} #ricordiamo che è comunque un oggetto proc
    a.call 'ciao'

    b = -> n {p n}
    b.call 'riciao'
  end

  def test_2
    a = lambda {|n, m| p n + m}
    a.call 'ciao', 'mauro'

    b = -> (n, m) {p n + m}
    b.call 'riciao', 'mauro'
  end

  def test_3
    a = -> (n) {p n}
    b = -> n, m {p n + m}
    c = -> (n, m) {p n + m}
    a.call 'ciao'
    b.call 'ciao', 'mauro'
    c.call 'ciao', 'ganci'
  end

  def multiple_proc(proc1, proc2)
    proc1.call
    proc2.call
  end

  def test_4
    multiple_proc(lambda {p 'a'}, lambda {p 'b'})
    multiple_proc(->{p 'e'}, ->{p 'f'})

    c = lambda {p 'c'}
    d = lambda {p 'd'}
    multiple_proc(c, d)
  end

  def test_5
   1.times do |val|
     multiple_proc(->{p "#{val} is small"}, ->{p "#{val} is big"})
     multiple_proc(lambda{p "#{val} is big"}, lambda{p "#{val} is big"})
   end
  end

  def my_if(condition, then_clause, else_clause)
    if condition
      then_clause.call
    else
      else_clause.call
    end
  end

  def test_6
    5.times do |n|
      my_if(n < 3, ->{p 'x'}, ->{p 'y'})
    end
  end

  def my_while(condition, &block)
    #La condition è una Proc, non è necessario mettergli la & davanti.
    while condition.call
      block.call
    end
  end

  def test_7
    a = 0
    # il primo parametro è una Proc, il secondo un blocco.
    my_while(-> {a < 3}) do
      p a
      a += 1
    end
  end

  def test_8
    a = 0
    my_while(-> {a < 3}){p a; a += 1}
  end

  













  def test_9
    my_block('ciao') {p 'XXX'}
    my_block('ciao') do
      p 'XXX'
    end
  end

  def my_block(a, &block)
    p a + block.call('ciao')
  end


  def test_13
    m = -> {p 'xxx'}
    a = -> (x, y) {p x; y.call}
    a.call 'ciao', m
  end

  def test_14
    proc1 = lambda do |a, *b, &block|
      p "a = #{a.inspect}"
      p "b = #{b.inspect}"
      block.call
    end

    proc1.call(1, 2, 3, 4){p 'aaa'}
  end

  def test_15
    proc1 = -> a, *b, &block do
      p "a = #{a.inspect}"
      p "ac = #{a.class}"
      p "b = #{b.inspect}"
      p "bc = #{b.class}"
      block.call
    end

    proc1.call(1){p 'aaa'}
    proc1.call(1, 2){p 'aaa'}
    proc1.call(1, 2, 3){p 'aaa'}
  end

  def test_16
   xxx {p '1'}

   xxx do
     p '2'
   end

   yyy(-> { p '3'})
   yyy(lambda { p '4'})
   yyy(Proc.new { p '5'})
  end

  def xxx
    yield
  end

  def yyy(proc)
    proc.call
  end

  def test_17
  a = power(2)
  p a.call
  p a.call
  p a.call
  p a.call
  p a.call
  end

  def power(n)
    y = 1
    -> {y = y * n}
  end

end
