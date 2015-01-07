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
    p 1+=1
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