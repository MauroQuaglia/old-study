require 'test/unit'
require_relative 'proc_example'

class BlockCanBeClosuresTest < Test::Unit::TestCase

  def n_times(thing)
    lambda {|n| n * thing}
  end

  def test_1
  proc = n_times 3 # il valore passato rimane in vita nel blocco... questa è closure
  p proc.call 100
  p proc.call 'X'
  end

  def power_proc_generator
    value = 1
    lambda{ value += value }
    # 1 2 4 8 16 32 64
    # a += 1 -> a = a + 1
    # a += a -> a = a + a
  end

  def test_2
    power = power_proc_generator
    p power.call
    p power.call
    p power.call
    p power.call
  end

end
