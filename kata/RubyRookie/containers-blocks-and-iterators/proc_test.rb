require 'test/unit'

class ProcTest < Test::Unit::TestCase

  def test_1
    my_class = MyClass.new {|p| puts p}
    my_class.execute 'ciao'
  end

  def test_2
    my_class = MyClass.new {|p| puts 'XXX' + p + 'XXX'}
    my_proc = my_class.get_block
    my_proc.call 'MAURO'
    my_proc.call 'GANCI'
  end

  def test_3
    block1 = Proc.new {|p| p 'Proc.new ' + p}
    block2 = lambda {|p| p 'lambda ' + p}
    p block1
    p block2

    block1.call 'MAURO'
    block2.call 'MAURO'
  end

  def test_4
  proc = n_times 3 # il valore passato rimane in vita nel blocco... questa è closure
  p proc.call 100
  p proc.call 'X'
  end

  def test_5
    power = power_proc_generator
    p power.call
    p power.call
    p power.call
    p power.call
  end


  def test_4
    # 1 2 4 8 16 32 64
    # a += 1 -> a = a + 1
    # a += a -> a = a + a
  end

  def power_proc_generator
    value = 1
    lambda{ value += value }
    # qui si porta dietro lo scope della variabile
  end

  def power_proc_generator2
    lambda{|value = 1| value += value }
    # qui sembra che la inizializzi tutte le volte
  end


  def n_times(thing)
    lambda {|n| n * thing}
  end

  def test_6
    # modo alternativo per creare un oggetto proc
    a = lambda {|n| p n} #ricordiamo che è comunque un oggetto proc
    a.call 'ciao'

    b = -> n {p n}
    b.call 'riciao'
  end

  def test_7
    a = -> n {p n}
    b = -> n, m {p n + m}
    c = -> (n, m) {p n + m}
    a.call 'ciao'
    b.call 'ciao', 'mauro'
    c.call 'ciao', 'ganci'
  end

  def test_8
   5.times do |val|
    my_if val < 2, ->{p "#{val} is small"}, ->{p "#{val} is big"}
   end
  end

  def my_if(condition, option1, option2)
    if condition
      option1.call
    else
      option2.call
    end
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

  def test_10
    a = 0
    my_while(-> {a < 3}) do
      p a
      a += 1
    end
  end

  def test_11
    a = 0
    my_while2 -> {a < 3} do
      p a
      a += 1
    end
  end

  def test_12
    a = 0
    my_while2(-> {a < 3}){p a; a += 1}
  end



  def my_while(condition, &block)
    #La condition è una Proc, non è necessario mettergli la & davanti.
    while condition.call
      block.call
    end
  end

  def my_while2(condition)
    #La condition è una Proc, non è necessario mettergli la & davanti.
    while condition.call
      yield
    end
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

class MyClass

  def initialize(&action)
    @action = action # viene memorizzato in un oggetto Proc.
    puts @action
  end

  def execute(value)
    @action.call value
  end

  def get_block
    @action
  end

end