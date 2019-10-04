require 'test/unit'
require_relative 'proc_example'

class BlockParameterListsTest < Test::Unit::TestCase

  def test_1
    proc1 = lambda do |a, *b, &block|
      p "a = #{a.inspect}"
      p "b = #{b.inspect}"
      block.call
    end

    proc1.call(1, 2, 3, 4){p 'xxx'}
  end

  def test_2
    proc1 = -> a, *b, &block do
      p "a = #{a.inspect}"
      p "b = #{b.inspect}"
      block.call
    end

    proc1.call(1){p 'aaa'}
    proc1.call(1, 2){p 'aaa'}
    proc1.call(1, 2, 3){p 'aaa'}
  end

  def test_3
   yyy(-> { p '3'})
   yyy(lambda { p '4'})
   yyy(Proc.new { p '5'})
  end

  def yyy(proc)
    proc.call
  end

  def test_4
  a = power(2)
  p a.call
  p a.call
  p a.call
  p a.call
  p a.call
  end

  def power(n)
    y = 1
    -> { y = y * n}
  end

end